'use strict';

angular.module('chhs').controller('homeCtrl', function ($http, $log) {

  var home = this;

  $http.get('/api/account').then(function (resp) {
    home.account = resp.data;
  });

  this.login = function () {
    var authRequest = this.auth;
    $log.info('Attempting login request...');
    $http.post('/login', authRequest).then(function () {
      document.location.reload(true);
    }, function () {
      $log.error('Error during login.');
    });
  };

});
