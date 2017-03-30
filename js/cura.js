$(document).ready(function() {

//onclick popover for login
	$("#login-link").popover({
		'html':true,    
	    content: function(){
	        return $('#login-content').html();
	    }
	});

//onhover popover for skincare
	// $("#skincare-link").popover({
	// 	'html':true,    
	//     content: function(){
	//         return $('#skincare-content').html();
	//     }
	// });

//possible solution

	$("#skincare-link").popover({ trigger: "manual" , html: true, 
		animation:false, content: function(){
	         return $('#skincare-content').html();
	     }})
	    .on("mouseenter", function () {
	        var _this = this;
	        $(this).popover("show");
	        $(".popover").on("mouseleave", function () {
	            $(_this).popover('hide');
	        });
	    }).on("mouseleave", function () {
	        var _this = this;
	        setTimeout(function () {
	            if (!$(".popover:hover").length) {
	                $(_this).popover("hide");
	            }
	        }, 300);
	});

	//for add to cart spinner
	(function ($) {
		  $('.spinner .btn:first-of-type').on('click', function() {
		    $('.spinner input').val( parseInt($('.spinner input').val(), 10) + 1);
		  });
		  $('.spinner .btn:last-of-type').on('click', function() {
		    $('.spinner input').val( parseInt($('.spinner input').val(), 10) - 1);
		  });
		})(jQuery);

})

