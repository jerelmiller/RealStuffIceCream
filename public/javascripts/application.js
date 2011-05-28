// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function() {
	$('#event_start_date').datepicker({minDate: '0', maxDate: '+2y', selectOtherMonths: true, showOtherMonths: true,
										onSelect: function()
										{
											var min = $(this).datepicker("getDate");
											$('#event_end_date').datepicker();
											$('#event_end_date').datepicker("option", "minDate", min);
										}});
	
	if (document.getElementById('event_start_date').value == null) {					
		var min = $('#event_start_date').datepicker("getDate");			
		$('#event_end_date').datepicker({minDate: min, maxDate: '+2y', selectOtherMonths: true, showOtherMonths: true});
	} else {
		$('#event_end_date').datepicker({minDate: '0', maxDate: ' +2y', selectOtherMonths: true, showOtherMonths: true})
	}
	
	$(".ui-datepicker-calendar a").live("click",function(event){event.preventDefault();})
																		
});