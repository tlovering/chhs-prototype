'use strict';

angular.module('chhs').factory('Account', function ($http, $log) {

  function createAccount(accountInfo) {
    return $http.post('/api/account/register', accountInfo)
      .then(function (response) {
        return response.data;
      }, function (e) {
        $log.error('Error creating user account.');
        throw e;
      });
  }

  function getUserAccount() {
    return $http.get('/api/account')
      .then(function (response) {
        return response;
      }, function (e) {
        $log.error('Error getting user account.');
        throw e;
      });
  }

  return {
    createAccount: createAccount,
    getUserAccount: getUserAccount
  };
});
