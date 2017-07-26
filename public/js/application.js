$(document).ready(function () {
	$("#die_action").submit(function(event){
		event.preventDefault();

		// do an ajax request to /rolls:
		var form = $(this);
		var form_data = form.serialize();
		$.ajax({
			url: form.attr('action'), 
			//or hardcode with /rolls
			type: form.attr('method'),
			data: form_data
		})

		//update span class with the ajax response
		.done(function(dataReturn) {
			$("div#die-container").html('<div class="die"><span class="roll">' + dataReturn + "</span></roll>");
		})
	})
	

  // PSEUDO-CODE:
  //   1- intercept the form submission event using jQuery
  //   2- prevent the default action for that event from happening
  //   3- use jQuery to submit an AJAX post to the form's action
  //   4- when the AJAX post is done, display the new die roll using jQuery

});
