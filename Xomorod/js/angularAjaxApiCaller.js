var app = angular.module("xomorodApp", []);
var scope = null;
var http = null;

function bodyController($scope, $http) {
    scope = $scope;
    http = $http;

    var lang = "en-US";

    if (docCookies.hasItem("Culture")) {
        lang = docCookies.getItem("Culture");
        if (lang === "fa-IR") {
            document.getElementById("chkLanguage").checked = false;
        }
    }

    $http.get("api/localization/" + lang).success(function (response) {
        $scope.xomorod = response;
        $scope.$apply();
    }).error(function () {
        alert("an unexcepted error ocurred!");
    });
}


function productsController($scope, $http) {
    $http.get("api/products").success(function (response) {
        $scope.products = response;
        $scope.$apply();
    }).error(function () {
        alert("an unexcepted error ocurred!");
    });
}

function changeLanguage() {
    var language = document.getElementById("chkLanguage").checked ? "en-US" : "fa-IR";

    docCookies.setItem("Culture", language);

    bodyController(scope, http);
}