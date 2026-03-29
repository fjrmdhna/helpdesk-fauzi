<?php

namespace App\Services;

use App\Models\Ticket\Ticket;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class TicketAutoAssignmentService
{
    /**
     * Assign ticket to helpdesk role users.
     *
     * Strategy:
     * - Pick the helpdesk agent with the least number of open tickets assigned.
     * - Set `ticketassignchildren.toassignuser_id` to the selected helpdesk user.
     * - Set `myassignuser_id` to the first superadmin (fallback) so counts/filters stay consistent.
     *
     * Returns selected helpdesk user, or null when no admin/helpdesk user exists.
     */
    public function assignToDefaultAdmin(Ticket $ticket): ?User
    {
        $helpdeskUsers = $this->getUsersByRoleName('helpdesk');

        // Fallback: if no helpdesk role is configured, keep previous behavior (assign to superadmin).
        if ($helpdeskUsers->isEmpty()) {
            $helpdeskUsers = $this->getUsersByRoleName('superadmin');
        }

        if ($helpdeskUsers->isEmpty()) {
            return null;
        }

        $assigner = $this->getFirstUserByRoleName('superadmin') ?? $helpdeskUsers->first();
        $helpdeskIds = $helpdeskUsers->pluck('id')->all();

        // Load-balance: choose helpdesk agent with minimum open tickets.
        $counts = Ticket::query()
            ->where('tickets.status', '!=', 'Closed')
            ->whereNull('tickets.selfassignuser_id')
            ->join('ticketassignchildren', 'ticketassignchildren.ticket_id', '=', 'tickets.id')
            ->whereIn('ticketassignchildren.toassignuser_id', $helpdeskIds)
            ->selectRaw('ticketassignchildren.toassignuser_id, COUNT(*) as cnt')
            ->groupBy('ticketassignchildren.toassignuser_id')
            ->pluck('cnt', 'ticketassignchildren.toassignuser_id');

        $selectedId = null;
        $min = PHP_INT_MAX;
        foreach ($helpdeskUsers as $user) {
            $cnt = (int) ($counts[$user->id] ?? 0);
            if ($cnt < $min) {
                $min = $cnt;
                $selectedId = $user->id;
            }
        }

        if ($selectedId === null) {
            return null;
        }

        $ticket->myassignuser_id = $assigner->id;
        $ticket->selfassignuser_id = null;
        $ticket->save();

        // Set assignee(s) for "Other Assign" flow.
        $ticket->ticketassignmutliple()->sync([$selectedId]);

        return User::find($selectedId);
    }

    private function getUsersByRoleName(string $roleName)
    {
        // NOTE: Model `App\Models\User` has a `role()` relationship method, so we
        // cannot rely on Spatie's `role()` scope here.
        return User::query()
            ->whereHas('roles', function ($q) use ($roleName) {
                $q->whereRaw('LOWER(name) = ?', [mb_strtolower($roleName)]);
            })
            ->orderBy('id')
            ->get();
    }

    private function getFirstUserByRoleName(string $roleName): ?User
    {
        return $this->getUsersByRoleName($roleName)->first();
    }
}
