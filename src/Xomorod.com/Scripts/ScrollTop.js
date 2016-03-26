/**/
/* on scroll */
/**/
$(window).scroll(function () {
    if ($(this).scrollTop() > 200) {
        $('#scroll-top').fadeIn();
    }
    else {
        $('#scroll-top').fadeOut();
    }
});

/**/
/* on document load */
/**/
$(function () {
    /**/
    /* scroll top */
    /**/
    $('#scroll-top').click(function () {
        $('html, body').animate({ scrollTop: 0 });
        return false;
    });
});