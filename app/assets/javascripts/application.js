// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require trippro
//= require jquery.inview
//= require jquery.gifplayer
//= require tour_gif_control

$(function(){ $(document).foundation({
equalizer : {
    equalize_on_stack: false
  },
abide : {
    live_validate : false,
    focus_on_invalid : false,
    error_labels: false, // labels with a for="inputId" will recieve an `error` class
    timeout : 10000000    
}
}); });

function setButtonPosition() {
    $('#SnapABug_Button').css('top', '40%');
    $('#SnapABug_Button').css('left', '-20px');
    $('#SnapABug_Button').css('-ms-transform', 'rotate(270deg)');
    $('#SnapABug_Button').css('-webkit-transform', 'rotate(270deg)');
    $('#SnapABug_Button').css('transform', 'rotate(270deg)');
}

$(document).ready(function(){
    $('#live-chat-button').click(function(){
      return SnapEngage.startLink();
    });

    $(window).scroll(function(){
        if ($(this).scrollTop() > 300) {
            $('.scroll-top').fadeIn();
        } else {
            $('.scroll-top').fadeOut();
        }
    });

    $('.scroll-top').click(function(){
        $('html, body').animate({scrollTop : 0},800);
        return false;
    });

});
