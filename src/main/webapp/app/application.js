'use strict';

angular.module('chhs', ['ngCookies', 'ngRoute', 'uiGmapgoogle-maps'])
  .config(function ($httpProvider) {
    $httpProvider.interceptors.push(function () {
      return {
        responseError: function (rejection) {
          if (rejection.status === 403) {
            console.log('403 Error!');
          }
          return rejection;
        }
      };
    });
  })
  .run(function ($cookies, $http, $log) {

    if ($cookies.get('Token')) {
      $log.debug('Auth token found, adding to all requests.');
      $http.defaults.headers.common['Token'] = $cookies.get('Token');
    }

  });
