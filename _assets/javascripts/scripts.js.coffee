jQuery ($) ->
  
  # Update the active navbar item
  $("#navbar").scrollspy()
  
  # Enable smooth scrolling, with an offset to make sure the section header is in view
  $("#menu-anchors, .page-title").localScroll offset: -100
  $("a.brand").click (e) ->
    e.preventDefault()
    $.scrollTo 0, 0

  
  # Initialize the slider
  $("#myCarousel").carousel()
  
  # HTML5 form validation fallback stuff	
  unless Modernizr.input.placeholder
    $("#contact-form label").each ->
      $(this).show()

    $("#contact-form input").each ->
      $(this).attr("placeholder", "").addClass "smaller-input"

  $("#contact-form").h5Validate()  if typeof document.createElement("input").checkValidity isnt "function"
