'use strict';

angular.module('chhs').directive('fosterHomeLocator', function (fosterHomesFactory) {
  return {
    restrict: 'C',
    templateUrl: 'app/directives/foster-home-locator/index.jsp',
    controller: function ($scope) {

      // Initialize data
      $scope.zip = '';
      $scope.proximity = '';
      $scope.mapSettings = {
        center: {
          latitude: 37.1870327,
          longitude: -119.7638647
        },
        zoom: 5
      };

      // Initialize async data
      fosterHomesFactory.getFosterHomes().then(function (fosterHomes) {
        $scope.results = fosterHomes;
      });

      // Exposed functions
      $scope.searchFosterHomes = function (zip, proximity) {
        fosterHomesFactory.searchFosterHomes(zip, proximity).then(function (fosterHomes) {
          $scope.results = fosterHomes;
        });
      };

      $scope.resetFosterHomes = function () {
        fosterHomesFactory.getFosterHomes().then(function (fosterHomes) {
          $scope.results = fosterHomes;
        });
      };

    }
  }
});
