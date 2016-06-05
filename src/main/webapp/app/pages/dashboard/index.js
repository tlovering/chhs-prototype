'use strict';

angular.module('chhs').controller('dashboardCtrl', function ($log, $cookies, $location) {
  if(!$cookies.get('Token')) $location.path('/login');
});
