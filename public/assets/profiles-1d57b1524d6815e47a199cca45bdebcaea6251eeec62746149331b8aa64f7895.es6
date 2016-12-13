
$(document).on('turbolinks:load', function () {
	$(".js-delete-event").on('click', deleteEvent);
});

function deleteEvent(){
	var theEventId = $(this).data("event-id");
	var eventUserId =  $(this).data("user-id");
	$(`#${theEventId}`).fadeOut();
	$.ajax({
		type: 'DELETE',
		url: `/api/events/${theEventId}`,
		success: goToFunction,
		error: handleError
	})
}

function goToFunction() {
	console.log("success")
}



function handleError(error) {
	console.log("eror")
	console.log(error)
}
