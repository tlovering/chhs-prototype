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
      controllerAs: 'register',
      resolve: {
        loggedIn: function($location, Auth){
          if(Auth.loggedIn()){
            $location.path('/dashboard');
          }
        }
      }
    })
    .when('/login', {
      templateUrl: '/app/pages/login/index.jsp',
      controller: 'loginCtrl',
      controllerAs: 'login',
      resolve: {
        loggedIn: function($location, Auth){
          if(Auth.loggedIn()){
            $location.path('/dashboard');
          }
        }
      }
    })
    .when('/dashboard', {
      templateUrl: '/app/pages/dashboard/index.jsp',
      controller: 'dashboardCtrl',
      controllerAs: 'dashboard',
      resolve: {
        loggedIn: function($location, Auth){
          if(!Auth.loggedIn()){
            $location.path('/login');
          }
        }
      }
    })
    .when('/support', {
      templateUrl: '/app/pages/support/index.jsp',
      controller: 'supportCtrl',
      controllerAs: 'support'
    })
    .otherwise({
      redirectTo: '/'
    });
});
