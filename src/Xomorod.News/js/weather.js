
$(document).ready(function () {
    if (navigator.geolocation) {
        var watchId = navigator.geolocation.watchPosition(function (position) {
            /* Does your browser support geolocation? */
            loadWeather(position.coords.latitude + ',' + position.coords.longitude, '', true); //load weather using your lat/lng coordinates
        },
            function (error) {
                if (error.code === error.PERMISSION_DENIED)
                    loadWeather('Tehran, Iran', '', false, 'geo location is blocked!'); //@params location, woeid, hidden or not ?

                navigator.geolocation.clearWatch(watchId);
            });
    } else {
        loadWeather('Tehran, Iran', '', true, "Your device does not support geo locations!");
    }
});

/* Where in the world are you? */
function geolocationClick() {
    navigator.geolocation.getCurrentPosition(function (position) {
        loadWeather(position.coords.latitude + ',' + position.coords.longitude, '', true); //load weather using your lat/lng coordinates
        $('#geolocation').hide();
    }, function (error) {
        var msg = 'Your geo location is blocked. for turn on do step by step:\n\n' +
            
            '1. In the top right, click the menu.\n' +
            '2. Click Settings > Show advanced settings.\n' +
            '3. In the "Privacy" section, click Content settings.\n' +
            '4. In the dialog that appears, scroll down to the "Location" section.\n' +
            '5. Select "Allow all sites to track your physical location"\n' +
            '6. Click Manage exceptions if you want to remove permissions you gave before to specific sites.\n';

        alert(msg);
    });
}

function loadWeather(location, woeid, realPos, errMsg) {
    $.simpleWeather({
        location: location,
        woeid: woeid,
        unit: 'c',
        success: function (weather) {
            html = '<div class="widget widget-weather">';
            html += '  <div class="head">' + weather.city + ', ' + weather.country + '</div>';
            html += '    <div class="cont">';
            html += '       <h2><i class="icon-' + weather.code + '"></i> ' + weather.temp + '&deg;' + weather.units.temp + '</h2>';
            //html += '       <img src="' + weather.image + '" width="180" height="150" alt="weather picture">';
            html += '       <p>' + weather.forecast[0].text + '<br>' + weather.wind.direction + '&nbsp;' + weather.wind.speed + '&nbsp;' + weather.units.speed + '</p>';
            html += '       <p>MIN:&nbsp;' + weather.forecast[0].low + '&deg;' + weather.units.temp + ' &nbsp;&nbsp;&nbsp; MAX:&nbsp;' + weather.forecast[0].high + '&deg;' + weather.units.temp + '</p>';
            html += '       <br/>';
            html += errMsg == null ? '' : '<p style="color: yellow;">' + errMsg + '</p><br/>';
            html += '       <br/><button type="button" id="geolocation" onclick="geolocationClick()" class="' + (realPos ? 'hidden' : 'show') + '">use my location</button>';
            html += '   </div>';
            html += '</div>';

            $("#weather").html(html);
        },
        error: function (error) {
            $("#weather").html('<p>' + error + '</p>');
        }
    });
}
