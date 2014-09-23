class TripPro
  constructor: ->
    $( => @loaded())
    @init()

    $(".more_info_expander").click (event) ->
      event.preventDefault
      exp_target = $(this).data("target")
      $(this).find('i').toggleClass('clicked')
      $(".#{exp_target}").slideToggle("fast")

    $(".box_expander").click (event) ->
      event.preventDefault
      exp_target = $(this).data("target")  
      $(".#{exp_target}").slideToggle("fast")

    $(".close_book").click (event) ->
      event.preventDefault
      $(".learn_book").css("display", "none")

    $(".close_qc").click (event) ->
      event.preventDefault
      $(".learn_qc").css("display", "none")
  init: ->
    $(window).scroll (event) ->
      $('header').toggleClass('smaller', $(event.target).scrollTop() > 50)
    true

  loaded: ->
    $('.laptop-slider').each (idx, slider) ->
      current = 0
      slides = $('ul li', slider).length

      if slides == 1
        $('.next, .prev', slider).remove()
        return

      $('.next', slider).click (event) ->
        event.preventDefault()
        return if current >= slides - 1
        current += 1
        margin = 0
        list = $('ul li', slider).slice(0, current).each (idx, el) ->
          margin -= $(el).outerWidth();
        $('ul li', slider).first().animate(marginLeft: margin)
        title = $('ul li', slider).slice(current).find('img').data('title')
        $('.slide-title', slider).fadeOut ->
          $(this).text(title).fadeIn()
        $(event.target).toggleClass('inactive', current == slides - 1)
        $(event.target).prev().toggleClass('inactive', current == 0)

      $('.prev', slider).click (event) ->
        event.preventDefault()
        return if current <= 0
        current -= 1
        margin = 0
        list = $('ul li', slider).slice(0, current).each (idx, el) ->
          margin -= $(el).outerWidth();
        $('ul li', slider).first().animate(marginLeft: margin)
        title = $('ul li', slider).slice(current).find('img').data('title')
        $('.slide-title', slider).fadeOut ->
          $(this).text(title).fadeIn()
        $(event.target).toggleClass('inactive', current == 0)
        $(event.target).next().toggleClass('inactive', current == slides - 1)

    true

window.tripPro = new TripPro()
