{{-- Matches customer dashboard ticket stat cards (label + count left, circular icon right). --}}
<div class="row">
    <div class="col-xl-3 col-lg-3 col-md-12">
        <div class="card">
            <div class="card-body">
                <a href="{{ url('/admin/alltickets') }}" class="text-decoration-none text-default">
                    <div class="row">
                        <div class="col-7">
                            <div class="mt-0 text-start">
                                <span class="fs-16 font-weight-semibold">{{ lang('Total Tickets', 'menu') }}</span>
                                <h3 class="mb-0 mt-1 text-primary fs-25">{{ $totaltickets }}</h3>
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
                <a href="{{ url('/admin/activeticket') }}" class="text-decoration-none text-default">
                    <div class="row">
                        <div class="col-7">
                            <div class="mt-0 text-start">
                                <span class="fs-16 font-weight-semibold">{{ lang('Active Tickets', 'menu') }}</span>
                                <h3 class="mb-0 mt-1 text-success fs-25">{{ $totalactivetickets }}</h3>
                            </div>
                        </div>
                        <div class="col-5">
                            <div class="icon1 bg-success-transparent my-auto float-end"><i class="ri-ticket-2-line"></i></div>
                        </div>
                    </div>
                </a>
                @if(($replyrecent ?? 0) > 0)
                    <span class="position-absolute uhelp-reply-badge pulse-badge" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="{{ lang('Un-Answered') }}"><i class="fa fa-commenting me-1"></i>{{ $replyrecent }}</span>
                @else
                    <span class="position-absolute uhelp-reply-badge pulse-badge disabled" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="{{ lang('Un-Answered') }}"><i class="fa fa-commenting me-1"></i>0</span>
                @endif
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-3 col-md-12">
        <div class="card">
            <div class="card-body">
                <a href="{{ route('admin.onholdticket') }}" class="text-decoration-none text-default">
                    <div class="row">
                        <div class="col-7">
                            <div class="mt-0 text-start">
                                <span class="fs-16 font-weight-semibold">{{ lang('On-Hold Tickets', 'menu') }}</span>
                                <h3 class="mb-0 mt-1 text-secondary fs-25">{{ $totalonholdtickets }}</h3>
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
                <a href="{{ url('/admin/closedticket') }}" class="text-decoration-none text-default">
                    <div class="row">
                        <div class="col-7">
                            <div class="mt-0 text-start">
                                <span class="fs-16 font-weight-semibold">{{ lang('Closed Tickets', 'menu') }}</span>
                                <h3 class="mb-0 mt-1 text-secondary fs-25">{{ $totalclosedtickets }}</h3>
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
