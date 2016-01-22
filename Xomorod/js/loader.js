window.onload = function () {
    var s = document.getElementById('loader').style;
    s.opacity = 1;
    // jQuery fadeOut("slow"):
    (function fade() { (s.opacity -= .1) < .2 ? s.display = "none" : setTimeout(fade, 80) })();
}