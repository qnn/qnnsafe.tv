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

  resizeVJS = ->
    width = $('#video_container').width()
    $('#video-player').width(width).height(width * 9 / 16)

  $(window).resize resizeVJS

  $(document).on 'click', '[data-toggle="modal"]', ->
    if $(this).attr('href') == '#video'
      $('#video_title').text($(this).find('.video_title').text())
      name = $(this).data('name')
      $('#video_container').html('<video id="video-player" class="video-js vjs-default-skin" controls data-setup="{}" poster="' + $(this).find('.video_image').attr('src') + '" preload="none" height="298" width="100%"><source src="http://www.qnnsafe.tv/mp4/' + name + '.mp4" type="video/mp4"></source></video>')
      _V_("video-player")

    else if $(this).attr('href') == '#youku'
      $('#youku_title').text($(this).find('.video_title').text())
      $('#youku_player').attr('src', 'http://player.youku.com/embed/' + $(this).data('id'));

  $('#video_fullscreen').click (e) -> _V_("video-player").requestFullScreen()

  $('#video').on 'shown.bs.modal', -> resizeVJS()

  $('#video').on 'hidden.bs.modal', -> _V_('video-player').dispose()

  $('#youku').on 'shown.bs.modal', ->
    width = $('#youku_container').width()
    $('#youku_player').width(width).height(width * 9 / 16 + 35)

  $('#youku').on 'hidden.bs.modal', -> $('#youku_player').attr('src', '')
