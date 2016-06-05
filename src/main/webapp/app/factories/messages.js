angular.module('chhs').factory('messagesFactory', function ($http, $log, $q) {


  function getMessages() {
    return $http.get('/api/messages').then(function (response) {
      return response.data;
    });
  }

  function sendMessage(from, to, message) {
    debugger;
    return $http.post('/api/messages', {
      fromId: from,
      toId: to,
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
