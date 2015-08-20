$(document).ready(function(){
	
	var gifObs = $(".row .gifs img");
	gifObs.each(function(){
		$(this).gifplayer({onStop: function(){
			$(this).gifplayer("stop");
		}});

		$(this).gifplayer("stop");
	});
	
		$(".row .gifs").bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
			o = $('img', this)

  		if (isInView && visiblePartY == 'both') {
  			o.gifplayer('play')
  		} else {
  			o.gifplayer('stop')
  		}
	});
	
	
})
