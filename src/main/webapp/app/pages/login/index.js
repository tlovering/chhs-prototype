'use strict';

angular.module('chhs').controller('loginCtrl', function ($http, $log, $location, Auth) {

  var login = this;


  this.login = function () {
    Auth.login(login.auth)
      .then(function () {
        $location.path('home');
        login.error = false;
      }, function () {
        login.error = true;

      });
  };
});
