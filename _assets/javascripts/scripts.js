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
	
$('#map').gMap({
	zoom: 9,
	markers:[
		{
			address: "San Jose, California", //Put your own address and label here
			html: "Chameleon HQ",
			popup: true
		},
	]
});
});
	


// Apply the section header 3D effect only if the browser supports it

(function flip3d( selector ){
	var supports3DTransforms = document.body.style.webkitPerspective !== undefined || document.body.style.MozPerspective !== undefined || document.body.style.OPerspective !== undefined || document.body.style.perspective !== undefined;

	if ( supports3DTransforms ){
		var nodes = document.querySelectorAll( selector );
 
		for ( var i = 0; i < nodes.length; i += 1 ) {
			var node = nodes[i];
	
			if( !node.className || !node.className.match( /flip/g ) ){
				node.className += 'flip';
			}
		}
	}
})('.page-title > a > h2');


// Footer Twitter feed

var twitter_user = "wrapbootstrap"; //Put your own Twitter account name here

if($().tweet) {
	$("#twitter-feed").tweet({
		username: twitter_user,
		join_text: "auto",
		avatar_size: 0,
		count: 4,
		auto_join_text_default: "",
		auto_join_text_ed: "",
		auto_join_text_ing: "",
		auto_join_text_reply: "",
		auto_join_text_url: "",
		loading_text: "loading tweets..."
	});
}
