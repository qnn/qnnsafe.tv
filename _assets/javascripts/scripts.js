$(document).ready(function(){

	// Update the active navbar item
	$("#navbar").scrollspy();
	
	// Enable smooth scrolling, with an offset to make sure the section header is in view
	$('#menu-anchors, .page-title').localScroll({offset: -100});
	
	// Initialize the slider
	$("#myCarousel").carousel();
	
	
	// HTML5 form validation fallback stuff	
	if (!Modernizr.input.placeholder){
		$("#contact-form label").each(function(){
			$(this).show();
		});
		
		$("#contact-form input").each(function(){
			$(this).attr("placeholder", "").addClass("smaller-input");
		});
	}
	
	if (typeof document.createElement("input").checkValidity !== "function") {
		$("#contact-form").h5Validate();
	}
});
