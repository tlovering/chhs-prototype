'use strict';

angular.module('chhs').config(function ($routeProvider) {
  $routeProvider
    .when('/', {
      templateUrl: '/app/pages/home/index.jsp',
      controller: 'homeCtrl',
      controllerAs: 'home'
    })
    .when('/register', {
      templateUrl: '/app/pages/register/index.jsp',
      controller: 'registerCtrl',
      controllerAs: 'register'
    })
    .when('/login', {
      templateUrl: '/app/pages/login/index.jsp',
      controller: 'loginCtrl',
      controllerAs: 'login'
    })
    .when('/dashboard', {
      templateUrl: '/app/pages/dashboard/index.jsp',
      controller: 'dashboardCtrl',
      controllerAs: 'dashboard'
    })
    .otherwise({
      redirectTo: '/'
    });
});
