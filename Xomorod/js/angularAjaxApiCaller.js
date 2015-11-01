var CookiekeyName = "Culture";

function onLoad() {
    if (docCookies.hasItem(CookiekeyName)) {
        var lang = docCookies.getItem(CookiekeyName);
        if (lang === "fa-IR") {
            document.getElementById("chkLanguage").checked = false;
            //$("#chkLanguage").checked = false;
        }
    }
}

function mainController($scope, $http) {
    $http.get("api/localization").success(function (response) {
        $scope.xomorod = response;
    }).error(function () {
        alert("an unexcepted error ocurred!");
    });
}


function productsController($scope, $http) {
    //$http.get("https://api.github.com/users/behzadkhosravifar/repos").success(function (response) {
    $http.get("api/products").success(function (response) {
        $scope.products = response;
    }).error(function () {
        alert("an unexcepted error ocurred!");
    });
}

function changeLanguage() {
    var language = $("#chkLanguage").checked ? "en-US" : "fa-IR";

    docCookies.setItem(CookiekeyName, language);

    var app = window.angular.module('', []);

    app.controller('mainController', ['$scope', '$http', function ($scope, $http) {
  
        $http.get("api/localization/" + language).success(function (response) {
            $scope.xomorod = response;
        }).error(function () {
            alert("an unexcepted error ocurred!");
        });

    }]);
}