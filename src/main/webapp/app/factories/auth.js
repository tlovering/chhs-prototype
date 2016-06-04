/**
 * Created by rcharow on 6/4/16.
 */
angular.module('chhs').factory('Auth', function($http,$log) {
  var login = function (email, password) {
    var authRequest = {
      email: email,
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



  return {
    login: login
  };
});
