{{-- Expects $ticket (\App\Models\Ticket\Ticket). Uses data-order for DataTables sorting. --}}
@php
    $tz = auth()->check() && auth()->user()->timezone ? auth()->user()->timezone : setting('default_timezone');
    $createdFormatted = $ticket->created_at->timezone($tz)->format(setting('date_format'));
    $createdOrder = $ticket->created_at->timezone($tz)->timestamp;
    $closedOrder = $ticket->closing_ticket
        ? $ticket->closing_ticket->timezone($tz)->timestamp
        : 0;
    $durationHours = (int) $ticket->created_at->diffInHours($ticket->closing_ticket ?? now());
@endphp
<td data-order="{{ $createdOrder }}" class="text-nowrap small text-success">{{ $createdFormatted }}</td>
<td data-order="{{ $closedOrder }}" class="text-nowrap small @if($ticket->closing_ticket) text-success @else text-muted @endif">
    @if($ticket->closing_ticket)
        {{ $ticket->closing_ticket->timezone($tz)->format(setting('date_format')) }}
    @else
        {{ lang('Open') }}
    @endif
</td>
<td data-order="{{ $durationHours }}" class="text-nowrap small text-success">{{ $ticket->formattedDurationHours() }}</td>
