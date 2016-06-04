/**
 * Created by rcharow on 6/4/16.
 */
angular.module('chhs').factory('Auth', function($http,$log) {
  var login = function (username, password) {
    var authRequest = {
      username: username,
      password: password
    };
    $log.info('Attempting login request...');

    return $http.post('/login', authRequest)
      .then(function (response) {
        return response.data;
      }, function () {
        $log.error('Error during login.');
      });

  }

  var getUserAccount = function(){
    return $http.get('/api/account').then(function (response) {
      return response.data;
    })
  }

  return {
    login: login,
    getUserAccount: getUserAccount
  };
});
