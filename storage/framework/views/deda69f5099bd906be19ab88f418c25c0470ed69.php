
<div class="row">
    <div class="col-xl-3 col-lg-3 col-md-12">
        <div class="card">
            <div class="card-body">
                <a href="<?php echo e(url('/admin/alltickets')); ?>" class="text-decoration-none text-default">
                    <div class="row">
                        <div class="col-7">
                            <div class="mt-0 text-start">
                                <span class="fs-16 font-weight-semibold"><?php echo e(lang('Total Tickets', 'menu')); ?></span>
                                <h3 class="mb-0 mt-1 text-primary fs-25"><?php echo e($totaltickets); ?></h3>
                            </div>
                        </div>
                        <div class="col-5">
                            <div class="icon1 bg-primary-transparent my-auto float-end"><i class="las la-ticket-alt"></i></div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-3 col-md-12">
        <div class="card">
            <div class="card-body position-relative">
                <a href="<?php echo e(url('/admin/activeticket')); ?>" class="text-decoration-none text-default">
                    <div class="row">
                        <div class="col-7">
                            <div class="mt-0 text-start">
                                <span class="fs-16 font-weight-semibold"><?php echo e(lang('Active Tickets', 'menu')); ?></span>
                                <h3 class="mb-0 mt-1 text-success fs-25"><?php echo e($totalactivetickets); ?></h3>
                            </div>
                        </div>
                        <div class="col-5">
                            <div class="icon1 bg-success-transparent my-auto float-end"><i class="ri-ticket-2-line"></i></div>
                        </div>
                    </div>
                </a>
                <?php if(($replyrecent ?? 0) > 0): ?>
                    <span class="position-absolute uhelp-reply-badge pulse-badge" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="<?php echo e(lang('Un-Answered')); ?>"><i class="fa fa-commenting me-1"></i><?php echo e($replyrecent); ?></span>
                <?php else: ?>
                    <span class="position-absolute uhelp-reply-badge pulse-badge disabled" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="<?php echo e(lang('Un-Answered')); ?>"><i class="fa fa-commenting me-1"></i>0</span>
                <?php endif; ?>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-3 col-md-12">
        <div class="card">
            <div class="card-body">
                <a href="<?php echo e(route('admin.onholdticket')); ?>" class="text-decoration-none text-default">
                    <div class="row">
                        <div class="col-7">
                            <div class="mt-0 text-start">
                                <span class="fs-16 font-weight-semibold"><?php echo e(lang('On-Hold Tickets', 'menu')); ?></span>
                                <h3 class="mb-0 mt-1 text-secondary fs-25"><?php echo e($totalonholdtickets); ?></h3>
                            </div>
                        </div>
                        <div class="col-5">
                            <div class="icon1 bg-warning-transparent my-auto float-end"><i class="ri-coupon-2-line"></i></div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-3 col-md-12">
        <div class="card">
            <div class="card-body">
                <a href="<?php echo e(url('/admin/closedticket')); ?>" class="text-decoration-none text-default">
                    <div class="row">
                        <div class="col-7">
                            <div class="mt-0 text-start">
                                <span class="fs-16 font-weight-semibold"><?php echo e(lang('Closed Tickets', 'menu')); ?></span>
                                <h3 class="mb-0 mt-1 text-secondary fs-25"><?php echo e($totalclosedtickets); ?></h3>
                            </div>
                        </div>
                        <div class="col-5">
                            <div class="icon1 bg-danger-transparent my-auto float-end"><i class="ri-coupon-2-line"></i></div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\helpdesk-fauzi\resources\views/includes/admin/dashboard-global-ticket-cards.blade.php ENDPATH**/ ?>