'use strict';

angular.module('chhs').config(function ($routeProvider) {
  $routeProvider
    .when('/', {
      templateUrl: '/app/home/index.jsp',
      controller: 'homeCtrl',
      controllerAs: 'home'
    })
    .when('/login', {})
    .when('/dashboard', {})
    .otherwise({
      redirectTo: '/'
    });
});
