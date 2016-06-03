'use strict';

angular.module('chhs').config(function ($routeProvider) {
  $routeProvider
    .when('/', {
      templateUrl: '/app/home/index.jsp',
      controller: 'homeCtrl',
      controllerAs: 'home'
    })
    .otherwise({
      redirectTo: '/'
    });
});
