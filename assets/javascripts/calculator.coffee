$ ->


  $('.diameters li').first().addClass('active')
  calculate(1000)




  $('.diameters li').on 'click', ->

    $('.diameters li').removeClass('active')
    $(@).addClass('active')

    $('#diameter-value').text $(@).attr('diameter')
    $('#diameter-price').text $(@).attr('price')

    weight = parseInt($('#weight').val())
    weight = 1000 if isNaN(weight)
    calculate(weight)

  $('#weight').change ->

    weight = parseInt($(@).val())
    weight = 1000 if isNaN(weight)
    calculate(weight)






window.calculate = (weight) ->

  diameter = $('.diameters li.active')

  separator = $.animateNumber.numberStepFactories.separator(',')

  $('#total-composite-weight').animateNumber({number: diameter.attr('weight') * weight, numberStep: separator}, 400)
  $('#total-steel-weight').animateNumber({number: diameter.attr('steel_weight') * weight, numberStep: separator}, 750)
  $('#total-price').animateNumber({ number:  diameter.attr('price') * weight, numberStep: separator}, 1000)
