var app = angular.module('xomorodApp', ['hc.marked']);
app.controller('bodyController', bodyController);
app.controller('productsController', productsController);

function bodyController($scope, $http) {

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
            alert("an unexcepted error ocurred at changeLanguage at bodyController!");
        });
    }

    changeLanguage(lang);
}

function productsController($scope, $http) {
    $http.get("api/products").success(function (response) {
        $scope.products = response;
        $scope.convertMarked = function (data) {
            //document.getElementById('content').innerHTML = marked(response);
            $scope.readme_markdown = marked(data.portfolio.Markdown);
        }
    }).error(function () {
        alert("an unexcepted error ocurred at productsController");
    });
}

function OnLanguageChanged() {
    var checked = $("#chkLanguage").prop('checked');
    var language = checked ? "en-US" : "fa-IR";

    docCookies.setItem("Culture", language);

    var sc = angular.element($("#chkLanguage")).scope();
    sc.$apply(function() {
        sc.isEnglish = checked;
    });
}