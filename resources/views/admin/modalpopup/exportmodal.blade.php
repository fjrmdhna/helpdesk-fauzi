<!-- Export Modal -->
<div class="modal fade" id="exportModal" tabindex="-1" role="dialog" aria-labelledby="exportModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exportModalLabel">{{lang('Export Tickets to Excel')}}</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<form id="export_form">
					<div class="form-group mb-3">
						<label for="export_start_date">{{lang('Start Date')}}</label>
						<input type="date" class="form-control" id="export_start_date" name="start_date" required>
					</div>
					<div class="form-group mb-3">
						<label for="export_end_date">{{lang('End Date')}}</label>
						<input type="date" class="form-control" id="export_end_date" name="end_date" required>
					</div>
					<div id="exportError" class="alert alert-danger" style="display:none;"></div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{{lang('Close')}}</button>
				<button type="button" class="btn btn-primary" id="btnExport">{{lang('Export')}}</button>
			</div>
		</div>
	</div>
</div>
<!-- End Export Modal -->

<script type="text/javascript">
	// Export to Excel
	$('body').on('click', '#exportExcel', function() {
		// Set today's date as default end date
		var today = new Date().toISOString().split('T')[0];
		// Set 30 days ago as default start date
		var thirtyDaysAgo = new Date(Date.now() - 30 * 24 * 60 * 60 * 1000).toISOString().split('T')[0];
		
		$('#export_start_date').val(thirtyDaysAgo);
		$('#export_end_date').val(today);
		$('#exportError').hide();
		$('#exportModal').modal('show');
	});

	// Export button click handler
	$('body').on('click', '#btnExport', function() {
		var startDate = $('#export_start_date').val();
		var endDate = $('#export_end_date').val();

		if(!startDate || !endDate) {
			$('#exportError').html('{{lang("Please select both start and end dates.", "alerts")}}');
			$('#exportError').show();
			return;
		}

		if(new Date(startDate) > new Date(endDate)) {
			$('#exportError').html('{{lang("Start date must be before end date.", "alerts")}}');
			$('#exportError').show();
			return;
		}

		// Show loading state
		var btnText = $(this).html();
		$(this).html('{{lang("Exporting...")}}');
		$(this).prop('disabled', true);

		// Make request to export
		var SITEURL = '{{url("")}}';
		window.location.href = SITEURL + '/admin/export-tickets?start_date=' + startDate + '&end_date=' + endDate;

		// Reset button
		setTimeout(function() {
			$('#btnExport').html(btnText);
			$('#btnExport').prop('disabled', false);
			$('#exportModal').modal('hide');
		}, 1000);
	});
</script>
