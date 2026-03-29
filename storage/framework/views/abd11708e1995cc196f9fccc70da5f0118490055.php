
<?php
    $tz = auth()->check() && auth()->user()->timezone ? auth()->user()->timezone : setting('default_timezone');
    $createdFormatted = $ticket->created_at->timezone($tz)->format(setting('date_format'));
    $createdOrder = $ticket->created_at->timezone($tz)->timestamp;
    $closedOrder = $ticket->closing_ticket
        ? $ticket->closing_ticket->timezone($tz)->timestamp
        : 0;
    $durationHours = (int) $ticket->created_at->diffInHours($ticket->closing_ticket ?? now());
?>
<td data-order="<?php echo e($createdOrder); ?>" class="text-nowrap small text-success"><?php echo e($createdFormatted); ?></td>
<td data-order="<?php echo e($closedOrder); ?>" class="text-nowrap small <?php if($ticket->closing_ticket): ?> text-success <?php else: ?> text-muted <?php endif; ?>">
    <?php if($ticket->closing_ticket): ?>
        <?php echo e($ticket->closing_ticket->timezone($tz)->format(setting('date_format'))); ?>

    <?php else: ?>
        <?php echo e(lang('Open')); ?>

    <?php endif; ?>
</td>
<td data-order="<?php echo e($durationHours); ?>" class="text-nowrap small text-success"><?php echo e($ticket->formattedDurationHours()); ?></td>
<?php /**PATH C:\xampp\htdocs\helpdesk-fauzi\resources\views/admin/partials/ticket-list-datetime-cells.blade.php ENDPATH**/ ?>