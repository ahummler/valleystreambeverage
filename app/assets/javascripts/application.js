// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on('page:change', function() {
    $('.expander-trigger').click(function() {
    	$(this).toggleClass("expander-hidden");
    });
});
$(document).on('page:change', function() {
	$( "#heinbtl" ).click(function() {
	  $( "#hb" ).animate({
	    opacity: 0.25,
	    left: "+=50",
	    height: "toggle"
	  }, 5000, function() {
	    // Animation complete.
	  });
	});
});
$(document).on('page:change', function() {
	$( "#coronabtl" ).click(function() {
	  $( "#cb" ).animate({
	    opacity: 0.25,
	    left: "+=50",
	    height: "toggle"
	  }, 5000, function() {
	    // Animation complete.
	  });
	});
});
$(document).on('page:change', function() {
	$( "#ashpic" ).click(function() {
	  $( "#ash" ).animate({
	    opacity: 0.25,
	    left: "+=50",
	    height: "toggle"
	  }, 5000, function() {
	    // Animation complete.
	  });
	});
});
$(document).on('page:change', function(){

	$("#cheers").css("opacity", 0);

	$(window).scroll(function(){

		var windowHeight = $(window).height();
		var windowScrollPosTop = $(window).scrollTop();
		var windowScrollPosBottom= windowHeight +
		windowScrollPosTop;
		var objectOffset = $("#cheers").offset();
		var objectOffsetTop = objectOffset.top;

		
		if (!$("#cheers").hasClass("animation-complete")){

			if(windowScrollPosBottom > objectOffsetTop){
			$("#cheers").animate({"opacity" : 1},
			 3000).addClass("animation-complete");
		}
		}
	

});
});
// $(document).ready(function(){

// 	$("#products").css("opacity", 0);

// 	$(window).scroll(function(){

// 		var windowHeight = $(window).height();
// 		var windowScrollPosTop = $(window).scrollTop();
// 		var windowScrollPosBottom= windowHeight +
// 		windowScrollPosTop;
// 		var objectOffset = $("#products").offset();
// 		var objectOffsetTop = objectOffset.top;

		
// 		if (!$("#products").hasClass("animation-complete")){

// 			if(windowScrollPosBottom > objectOffsetTop){
// 			$("#products").animate({"opacity" : 1},
// 			 3000).addClass("animation-complete");
// 		}
// 		}
	

// });
// });
$(document).ready(function(){
	$(".beerlogos").css({'position':'absolute'})
	$(".beerlogos").animate({'left':'3000px'},80000, 'linear')
	
});
// $(document).on('page:change', function()
//   var menuToggle = $('#js-mobile-menu').unbind();
//   $('#js-navigation-menu').removeClass("show");

//   menuToggle.on('click', function(e) {
//     e.preventDefault();
//     $('#js-navigation-menu').slideToggle(function(){
//       if($('#js-navigation-menu').is(':hidden')) {
//         $('#js-navigation-menu').removeAttr('style');
//       }
//     });
//   });
// });



