/**
 * Created by rcharow on 6/4/16.
 */
angular.module('chhs').factory('Account', function ($http, $log) {

  var createAccount = function (accountInfo) {
    return $http.post('/api/account/register', accountInfo)
      .then(function (response) {
        return response.data;
      }, function (e) {
        $log.error('Error creating user account.')
        throw e;
       });
  }

  var getUserAccount = function () {
    return $http.get('/api/account')
      .then(function (response) {
        return response;
      }, function (e) {
        $log.error('Error getting user account.')
        throw e;
      });
  }


  return {
    createAccount: createAccount,
    getUserAccount: getUserAccount
  }
});
