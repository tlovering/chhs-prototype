'use strict';

angular.module('chhs').directive('fosterHomeLocator', function (fosterHomesFactory) {
  return {
    restrict: 'C',
    templateUrl: 'app/directives/foster-home-locator/index.jsp',
    controller: function ($scope) {

      var defaultSearchState = {
        zip: '',
        proximity: ''
      };

      var defaultMapState = {
        center: {
          latitude: 37.1870327,
          longitude: -119.7638647
        },
        zoom: 5
      };

      // Initialize data
      $scope.results = [];
      $scope.search = angular.copy(defaultSearchState);
      $scope.map = angular.copy(defaultMapState);

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
          $scope.search = angular.copy(defaultSearchState);
          // $scope.map = angular.copy(defaultMapState);
          $scope.results = fosterHomes;
        });
      };

    }
  }
});
