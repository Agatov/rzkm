$ ->


  $('.play-icon').on 'click', ->
    window.show_video("#about-us-video-html")

  $('#scroll-to-calculator-button').on 'click', ->
    $('body').animate({scrollTop: $('#calculator').offset().top}, 'slow')
    false

  $(".animated-arrow").on 'mouseover', ->
    shake_arrow($(@))


window.shake_arrow = (arrow) ->
  shake_a(arrow, i) for i in [1..6]


window.shake_a = (arrow, i) ->

  if i%2
    arrow.animate({left: '-=7'}, 150)
  else
    arrow.animate({left: '+=7'}, 150)


window.show_video = (template_id) ->

  $('.video-modal-bg').bind 'click', ->
    $('.video-modal').html('')
    $('.video-modal').hide()
    $('.video-modal-bg').hide()


  $('.video-modal-bg').show()
  $('.video-modal').html($(template_id).html())
  $('.video-modal').show()





