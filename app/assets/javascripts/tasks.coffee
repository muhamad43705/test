# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "turbolinks:load", -> 
	jQuery ->
		$('#datepicker').datepicker(
	    dateFormat: 'dd-mm-yy'
		);
		$('#task_status, #task_priority').select2 
	  	theme: 'bootstrap' 

