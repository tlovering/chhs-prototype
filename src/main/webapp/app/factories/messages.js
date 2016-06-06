angular.module('chhs').factory('messagesFactory', function ($http, $log, $q) {


  function getMessages() {
    return $http.get('/api/messages').then(function (response) {
      return response.data;
    });
  }

  function sendMessage(caseWorkerId, message) {
    return $http.post('/api/messages', {
      caseWorkerId: caseWorkerId,
      message: message
    });
  }

  return {
    getMessages: getMessages,
    sendMessage: sendMessage
  };
});
