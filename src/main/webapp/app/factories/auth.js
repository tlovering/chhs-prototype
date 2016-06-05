/**
 * Created by rcharow on 6/4/16.
 */
angular.module('chhs').factory('Auth', function($http,$log,$cookies) {
  var login = function (email, password) {
    var authRequest = {
      email: email,
      password: password
    };

    $log.info('Attempting login request...');

    return $http.post('/login', authRequest)
      .then(function (response) {
        return response.data;
      }, function (e) {
        $log.error('Error during login.');
        throw e;
      });

  }

  var loggedIn = function(){
    return !!$cookies.get('Token');
  };

  var logout = function(){

  }


  return {
    login: login,
    loggedIn: loggedIn,
    logout: logout
  };
});
