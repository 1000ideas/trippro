class TripPro
  constructor: ->
    $( => @loaded())
    @init()

  init: ->
    $(window).scroll (event) ->
      $('header').toggleClass('smaller', $(event.target).scrollTop() > 50)
    true

  loaded: ->
    true

window.tripPro = new TripPro()
