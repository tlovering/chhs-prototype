'use strict';

angular.module('chhs').controller('homeCtrl', function ($log, Auth) {

  var home = this;

  Auth.getUserAccount()
    .then(function (data) {
      home.account = data;
    })
});
