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

	var expanderTrigger = document.getElementById("js-expander-trigger");
    var expanderContent = document.getElementById("js-expander-content");
    var expanderTrigger1 = document.getElementById("js-expander-trigger-1");
    var expanderContent1 = document.getElementById("js-expander-content-1");
    var expanderTrigger2 = document.getElementById("js-expander-trigger-2");
    var expanderContent2 = document.getElementById("js-expander-content-2");
    var expanderTrigger3 = document.getElementById("js-expander-trigger-3");
    var expanderContent3 = document.getElementById("js-expander-content-3");
    var expanderTrigger4 = document.getElementById("js-expander-trigger-4");
    var expanderContent4 = document.getElementById("js-expander-content-4");
    var expanderTrigger5 = document.getElementById("js-expander-trigger-5");
    var expanderContent5 = document.getElementById("js-expander-content-5");
    var expanderTrigger6 = document.getElementById("js-expander-trigger-6");
    var expanderContent6 = document.getElementById("js-expander-content-6");
    var expanderTrigger7 = document.getElementById("js-expander-trigger-7");
    var expanderContent7 = document.getElementById("js-expander-content-7");

	  $('#js-expander-trigger').click(function(){
	  $(this).toggleClass("expander-hidden");
	  console.log('works');

	  $('#js-expander-trigger-1').click(function(){
	  $(this).toggleClass("expander-hidden");
	  console.log('works')

	  $('#js-expander-trigger-2').click(function(){
	  $(this).toggleClass("expander-hidden");
	  console.log('works')

	  $('#js-expander-trigger-3').click(function(){
	  $(this).toggleClass("expander-hidden");
	  console.log('works')

	  $('#js-expander-trigger-4').click(function(){
	  $(this).toggleClass("expander-hidden");
	  console.log('works')

	  $('#js-expander-trigger-5').click(function(){
	  $(this).toggleClass("expander-hidden");
	  console.log('works')

	  $('#js-expander-trigger-6').click(function(){
	  $(this).toggleClass("expander-hidden");
	  console.log('works')

	  $('#js-expander-trigger-7').click(function(){
	  $(this).toggleClass("expander-hidden");
	  console.log('works')
		 });
		});
	  });
	});
   });
  });
 });
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
});
