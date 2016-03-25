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