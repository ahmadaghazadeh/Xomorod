/* Use below link to convert to min version */
/* http://jscompress.com/                   */
/*******************************************/

(function ($) {
    "use strict"; // Start of use strict

    // jQuery for page scrolling feature - requires jQuery Easing plugin
    $('a.page-scroll').bind('click', function (event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: ($($anchor.attr('href')).offset().top - 50)
        }, 1250, 'easeInOutExpo');
        event.preventDefault();
    });

    // Highlight the top nav as scrolling occurs
    $('body').scrollspy({
        target: '.navbar-fixed-top',
        offset: 51
    })

    // Closes the Responsive Menu on Menu Item Click
    $('.navbar-collapse ul li a').click(function () {
        $('.navbar-toggle:visible').click();
    });

    // Fit Text Plugin for Main Header
    $("h1").fitText(
        1.2, {
            minFontSize: '40px',
            maxFontSize: '100px'
        }
    );

    // Offset for Main Navigation
    $('#mainNav').affix({
        offset: {
            top: 100
        }
    })

    // Initialize WOW.js Scrolling Animations
    new WOW().init();

})(jQuery); // End of use strict



function swing(id) {
    $(id).removeClass().addClass('swing animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {
        $(this).removeClass();
    });
}


$("#animationSandbox").hover(
    function () {
        swing('#animationSandbox');
    }, function () {
    }
);

$("#animationAbout").hover(
    function () {
        swing('#animationAbout');
    }, function () {
    }
);

$("#animationServices").hover(
    function () {
        swing('#animationServices');
    }, function () {
    }
);

$("#animationPortfolio").hover(
    function () {
        swing('#animationPortfolio');
    }, function () {
    }
);

$("#animationContact").hover(
    function () {
        swing('#animationContact');
    }, function () {
    }
);


$(window).scroll(function (event) {
    var height = $(window).scrollTop();
    // Do something
    var toTop = document.getElementById("toTop");
    if (height < 800) {
        toTop.style.opacity = 0.0;
    } else {
        toTop.style.display = "block";
        toTop.style.opacity = 1.0;
    }
});