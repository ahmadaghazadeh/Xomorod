var app = angular.module("xomorodApp", []);


app.controller('bodyController', function ($scope, $http) {

    var lang = "en-US";

    // Read client cookie for culture
    if (docCookies.hasItem("Culture")) {
        lang = docCookies.getItem("Culture");
    }
    //
    // Set model:
    $scope.isEnglish = (lang === "en-US");
    document.getElementById("chkLanguage").checked = (lang === "en-US");

    // Add listener for isEnglish property changed event
    $scope.$watch(function (sc) {
        return sc.isEnglish;
    }, function (newVal, oldVal) {
        changeLanguage(newVal ? "en-US" : "fa-IR");
    });

    function changeLanguage(lang) {
        $http.get("api/localization/" + lang).success(function (response) {
            $scope.xomorod = response;
        }).error(function () {
            alert("an unexcepted error ocurred!");
        });
    }

    changeLanguage(lang);
});

app.controller('productsController',
        function ($scope, $http) {
            $http.get("api/products").success(function (response) {
                $scope.products = response;
            }).error(function () {
                alert("an unexcepted error ocurred!");
            });
        });

function OnLanguageChanged() {
    var checked = $("#chkLanguage").prop('checked');
    var language = checked ? "en-US" : "fa-IR";

    docCookies.setItem("Culture", language);

    var sc = angular.element($("#chkLanguage")).scope();
    sc.$apply(function () {
        sc.isEnglish = checked;
    })
}