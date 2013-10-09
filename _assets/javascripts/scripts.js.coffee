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

  $(document).on 'click', '[data-toggle="modal"]', ->
    if $(this).attr('href') == '#video'
      $('#video_title').text($(this).find('.video_title').text())
      name = $(this).data('name')
      $('#video_container').html('<video id="video-player" class="video-js vjs-default-skin" controls data-setup="{}" poster="' + $(this).find('.video_image').attr('src') + '" preload="none" height="298" width="530"><source src="http://www.qnnsafe.tv/mp4/' + name + '.mp4" type="video/mp4"></source></video>')
      _V_("video-player")

  $('#video').on 'hidden.bs.modal', ->
    video = _V_('video-player')
    video.dispose()
