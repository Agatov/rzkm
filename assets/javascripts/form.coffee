$ ->

  $('#send-order').bind 'click', ->

    username = $('input[name=username]')
    phone = $('input[name=phone]')

    shake_fields = []

    if username.val() < 2
      shake_fields.push username

    if phone.val() < 10
      shake_fields.push phone

    if shake_fields.length > 0
      shake_field(field) for field in shake_fields
      return false



    $.post '/orders.json', {
      'order[username]': username.val(),
      'order[phone]': phone.val()

    }, (data) =>


    $('.modal-overlay').unbind 'click'
    $('.modal-overlay').bind 'click', ->
      hide_thank_you()

    show_thank_you_with_overlay()

    false


  $('#hide-thank-you').bind 'click', ->
    hide_thank_you()
    false


window.show_thank_you_with_overlay = ->

  $('.modal-overlay').show()
  $('.modal-overlay').animate({'opacity': '0.8'}, 300, ->

    $('.modal-thank-you').css('right', '-500px')
    $('.modal-thank-you').css('top', '50%')
    $('.modal-thank-you').show()
    $('.modal-thank-you').animate({'right': '50%'}, 500, ->
      $('input').val('')
    )
  )

window.hide_thank_you = ->
  $('input').val ''
  $('.modal-thank-you').animate {'top': '-2000px'}, 500, ->
    $('.modal-thank-you').hide()
    $('.modal-overlay').animate {'opacity': '0'}, 300, ->
      $('.modal-overlay').hide()


window.reachGoal = (goal) ->
  yaCounter24002644.reachGoal(goal)


window.shake_field = (field) ->
  shake(field, i) for i in [1..10]


window.shake = (field, i) ->

  if i%2
    field.animate({height: '-=15'}, 100)
  else
    field.animate({height: '+=15'}, 100)


window.reachGoal = (goal) ->


