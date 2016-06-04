'use strict';

angular.module('chhs').controller('homeCtrl', function ($http, $log) {

  var home = this;

  $http.get('/api/account').then(function (resp) {
    home.account = resp.data;
  });



});
