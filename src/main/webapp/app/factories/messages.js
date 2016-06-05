angular.module('chhs').factory('messagesFactory', function ($http, $log, $q) {


  function getMessages() {
    return $http.get('/api/messages').then(function (response) {
      return response.data;
    });
  }

  function sendMessage(caseWorkerId, message) {
    debugger;
    return $http.post('/api/messages', {
      caseWorkerId: caseWorkerId,
      message: message
    }).then(function (response) {
      return getMessages();
    });
  }

  return {
    getMessages: getMessages,
    sendMessage: sendMessage
  };
});
