'use strict';

angular.module('chhs').directive('fosterHomeLocator', function (fosterHomesFactory, uiGmapIsReady) {
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

      var gMap;

      var zoom = function () {
        if (gMap && $scope.results && $scope.results.length > 0) {
          var bounds = new google.maps.LatLngBounds();
          _.each($scope.results, function (loc) {
            bounds.extend(new google.maps.LatLng({lat: loc.location.latitude, lng: loc.location.longitude}));
          });
          gMap.fitBounds(bounds);
        }
      };

      // Initialize data
      $scope.results = [];
      $scope.search = angular.copy(defaultSearchState);
      $scope.map = angular.copy(defaultMapState);

      uiGmapIsReady.promise(1).then(function (instances) {
        gMap = instances[0].map;
        zoom();
      });

      // Initialize async data
      fosterHomesFactory.getFosterHomes().then(function (fosterHomes) {
        $scope.results = fosterHomes;
        zoom();
      });

      // Exposed functions
      $scope.searchFosterHomes = function (zip, proximity) {
        fosterHomesFactory.searchFosterHomes(zip, proximity).then(function (fosterHomes) {
          $scope.results = fosterHomes;
          zoom();
        });
      };

      $scope.resetFosterHomes = function () {
        fosterHomesFactory.getFosterHomes().then(function (fosterHomes) {
          $scope.search = angular.copy(defaultSearchState);
          $scope.results = fosterHomes;
          zoom();
        });
      };

    }
  };
});
