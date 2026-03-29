<?php

namespace App\Models\Ticket;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Ticket\Comment;
use App\Models\Ticket\Category;
use App\Models\Customer;
use App\Models\User;
use App\Models\Role;
use App\Models\CategoryUser;
use App\Models\Ticketnote;
use App\Models\Subcategorychild;
use App\Models\Subcategory;
use App\Models\TicketCustomfield;
use App\Models\ticketassignchild;
use App\Models\tickethistory;
use Illuminate\Support\Str;


class Ticket extends Model implements HasMedia
{
    use HasFactory, SoftDeletes;
    use InteractsWithMedia;

    protected $table ="tickets";
    protected $fillable = [
        'cust_id', 'category_id', 'image', 'ticket_id', 'title', 'priority', 'message', 'status','subject','user_id','project_id','auto_close_ticket',
        'project', 'purchasecode', 'purchasecodesupport','subcategory'
    ];

    protected $dates = [
        'closing_ticket',
        'last_reply',
        'craeted_at',
        'updated_at',
        'auto_replystatus',
        'auto_close_ticket',
        'auto_overdue_ticket'
    ];

    public function cust()
    {
        return $this->belongsTo(Customer::class, 'cust_id');
    }

    public function users()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
    public function toassignuser()
    {
        return $this->belongsTo(User::class, 'toassignuser_id');
    }
    public function myassignuser()
    {
        return $this->belongsTo(User::class, 'myassignuser_id');
    }
    public function comments()
    {
        return $this->hasMany(Comment::class)->latest('created_at');
    }

    /**
     * Most recent comment (for list previews / Last Reply column) — one row per ticket when eager loaded.
     */
    public function latestComment()
    {
        return $this->hasOne(Comment::class)->latestOfMany('created_at');
    }
    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function role()
    {
        return $this->hasMany(Role::class);
    }

    public function product()
    {
        return $this->hasMany(CategoryUser::class, 'category_id');
    }

    public function ticketnote(){
        return $this->hasmany(Ticketnote::class, 'ticket_id');
    }

    public function registerMediaCollections(): void
    {
        $this->addMediaCollection('ticket');
            //add option
    }
    public function subcategories()
    {
    	return $this->belongsTo(Subcategorychild::class, 'subcategory', 'subcategory_id');
    }

    public function subcategoriess()
    {
    	return $this->belongsTo(Subcategory::class, 'subcategory', 'id');
    }

    public function selfassign()
    {
        return $this->belongsTo(User::class, 'selfassignuser_id');
    }

    public function closedusers()
    {
        return $this->belongsTo(User::class, 'closedby_user');
    }

    public function ticket_customfield()
    {
        return $this->hasMany(TicketCustomfield::class, 'ticket_id');
    }

    /**
     * Active tickets are tickets that are not closed.
     */
    public function scopeActive($query)
    {
        return $query->where('status', '!=', 'Closed');
    }

    /**
     * Get a ticket custom field value by field name.
     *
     * Works with fields stored in `ticket_customfields.fieldnames`.
     * Comparison is normalized (case/whitespace/underscore insensitive).
     */
    public function customFieldValue(string $fieldName): ?string
    {
        $needle = self::normalizeCustomFieldName($fieldName);
        if ($needle === '') {
            return null;
        }

        $fields = $this->relationLoaded('ticket_customfield')
            ? $this->ticket_customfield
            : $this->ticket_customfield()->get();

        foreach ($fields as $field) {
            $name = self::normalizeCustomFieldName((string) ($field->fieldnames ?? ''));
            if ($name !== $needle) {
                continue;
            }

            $value = $field->values ?? null;
            if ($value === null || $value === '') {
                return null;
            }

            // Some fields can be stored encrypted when privacymode = 1.
            if ((string) ($field->privacymode ?? '') === '1') {
                try {
                    return decrypt($value);
                } catch (\Throwable $e) {
                    // Fall through and return raw value if decrypt fails.
                }
            }

            return (string) $value;
        }

        return null;
    }

    private static function normalizeCustomFieldName(string $name): string
    {
        $name = trim(mb_strtolower($name));
        if ($name === '') {
            return '';
        }

        // Remove whitespace and underscores to make matching resilient.
        $name = preg_replace('/[\s_]+/u', '', $name) ?? $name;

        return $name;
    }

    public function ticketassignmutliple()
    {
        return $this->belongsToMany(ticketassignchild::class, 'ticketassignchildren', 'ticket_id', 'toassignuser_id');
    }

    public function ticketassignmutliples()
    {
        return $this->hasMany(ticketassignchild::class);
    }

    public function ticket_history()
    {
        return $this->hasMany(tickethistory::class, 'ticket_id');
    }

    /**
     * Human-readable duration from ticket creation until close (or now if still open).
     * Examples: "3d 16h", "5h" — matches ticket list tables.
     */
    public function formattedDurationHours(): string
    {
        $endDate = $this->closing_ticket ?? now();
        $duration = (int) $this->created_at->diffInHours($endDate);
        $days = intdiv($duration, 24);
        $hours = $duration % 24;

        if ($days > 0) {
            return "{$days}d {$hours}h";
        }

        return "{$hours}h";
    }

    /**
     * Build a single-cell conversation transcript for Excel export.
     *
     * Includes the initial ticket message, then all comments oldest -> newest.
     * HTML is stripped and whitespace normalized for safe spreadsheet rendering.
     */
    public function conversationExportText(string $timezone = 'UTC'): string
    {
        $lines = [];

        $createdAt = $this->created_at?->timezone($timezone)?->format('Y-m-d H:i') ?? '';
        $customerName = $this->cust?->username ?? 'Customer';
        $ticketMessage = self::normalizeExportText((string) ($this->message ?? ''));
        if ($ticketMessage !== '') {
            $lines[] = "[{$createdAt}] {$customerName}: {$ticketMessage}";
        }

        $comments = $this->relationLoaded('comments')
            ? $this->comments->sortBy('created_at')
            : $this->comments()->oldest('created_at')->get();

        foreach ($comments as $comment) {
            $at = $comment->created_at?->timezone($timezone)?->format('Y-m-d H:i') ?? '';

            $author = $comment->user?->name
                ?? $comment->cust?->username
                ?? 'User';

            $role = null;
            if ($comment->user && method_exists($comment->user, 'getRoleNames')) {
                $role = $comment->user->getRoleNames()[0] ?? null;
            }

            $body = self::normalizeExportText((string) ($comment->comment ?? ''));
            if ($body === '') {
                continue;
            }

            $prefix = $role ? "{$author} ({$role})" : $author;
            $lines[] = "[{$at}] {$prefix}: {$body}";
        }

        return implode("\n", $lines);
    }

    private static function normalizeExportText(string $value): string
    {
        $value = html_entity_decode($value, ENT_QUOTES | ENT_HTML5, 'UTF-8');
        $value = strip_tags($value);
        $value = str_replace(["\r\n", "\r"], "\n", $value);
        $value = preg_replace("/[ \t]+/u", " ", $value) ?? $value;
        $value = preg_replace("/\n{3,}/u", "\n\n", $value) ?? $value;
        return trim($value);
    }

    /**
     * Latest conversation comment by time, regardless of how `comments` was eager-loaded.
     */
    private function resolveLatestComment(): ?Comment
    {
        if ($this->relationLoaded('latestComment')) {
            return $this->latestComment;
        }

        if ($this->relationLoaded('comments') && $this->comments->isNotEmpty()) {
            return $this->comments->sortByDesc(function ($c) {
                return $c->created_at?->getTimestamp() ?? 0;
            })->first();
        }

        return $this->latestComment()->with(['user', 'cust'])->first();
    }

    /**
     * Full last reply line for spreadsheet export (Excel cell limit ~32k chars).
     * Same labeling rules as {@see lastReplyText()} but without truncation.
     */
    public function lastReplyExportText(string $timezone = 'UTC'): string
    {
        $text = $this->lastReplyText(32700, $timezone);
        if ($text === '~') {
            return 'No reply';
        }

        return $text;
    }

    /**
     * Build a short "Last Reply" text for ticket list tables.
     *
     * Format example:
     * - "Replied Helpdesk : some message snippet..."
     */
    public function lastReplyText(int $maxChars = 90, string $timezone = 'UTC'): string
    {
        $comment = $this->resolveLatestComment();

        $status = trim((string) ($this->replystatus ?? ''));

        if ($comment) {
            $body = self::normalizeExportText((string) ($comment->comment ?? ''));
            if ($body === '') {
                return $status !== '' ? "{$status} : ~" : '~';
            }

            $role = null;
            if ($comment->user && method_exists($comment->user, 'getRoleNames')) {
                $role = $comment->user->getRoleNames()[0] ?? null;
            }

            $roleLabel = $role ? ucfirst((string) $role) : 'Customer';

            $snippet = $body;
            if (mb_strlen($snippet) > $maxChars) {
                $snippet = mb_substr($snippet, 0, max(0, $maxChars - 3)) . '...';
            }

            $prefix = $status !== '' ? $status . ' ' : '';
            return "{$prefix}{$roleLabel} : {$snippet}";
        }

        // Fallback: if there are no comments, use the initial ticket message.
        $ticketMessage = self::normalizeExportText((string) ($this->message ?? ''));
        if ($ticketMessage === '') {
            return '~';
        }

        $snippet = $ticketMessage;
        if (mb_strlen($snippet) > $maxChars) {
            $snippet = mb_substr($snippet, 0, max(0, $maxChars - 3)) . '...';
        }

        $prefix = $status !== '' ? $status . ' ' : '';
        return "{$prefix}Customer : {$snippet}";
    }

    /**
     * Human-readable label for `tickets.closed_reason`.
     * Stored values: by_customer | by_supplier
     */
    public function closedReasonLabel(): ?string
    {
        $reason = (string) ($this->closed_reason ?? '');
        if ($reason === '') {
            return null;
        }

        $map = [
            'by_customer' => 'By Customer',
            'by_supplier' => 'By Supplier',
        ];

        return $map[$reason] ?? null;
    }


}
