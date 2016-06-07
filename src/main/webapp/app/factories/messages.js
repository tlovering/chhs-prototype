'use strict';

angular.module('chhs').factory('messagesFactory', function ($http, $log, $q) {

  function getMessages() {
    return $http.get('/api/messages').then(function (response) {
      return response.data;
    });
  }

  function sendMessage(caseWorker, userMessage) {
    var message = angular.copy(userMessage);
    message.toEmail = caseWorker.email;
    return $http.post('/api/messages', message);
  }
  
  function deleteMessage(messageId) {
    $log.debug('Marking message ' + messageId + ' as deleted.');
    return $http.delete('/api/messages/' + messageId);
  }

  return {
    getMessages: getMessages,
    sendMessage: sendMessage,
    deleteMessage: deleteMessage
  };
});
