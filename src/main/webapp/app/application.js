'use strict';

angular.module('chhs', ['ngCookies', 'ngRoute', 'uiGmapgoogle-maps'])
  .run(function ($cookies, $http, $log) {

    if ($cookies.get('Token')) {
      $log.debug('Auth token found, adding to all requests.');
      $http.defaults.headers.common['Token'] = $cookies.get('Token');
    }

  });
