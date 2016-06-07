'use strict';

angular.module('chhs').directive('caseWorkerMessenger', function (messagesFactory, Account) {
  return {
    restrict: 'C',
    templateUrl: 'app/directives/case-worker-messenger/index.jsp',
    scope: {},
    controller: function ($scope) {
      var account;
      Account.getUserAccount().then(function (currentAccount) {
        account = currentAccount;
      });
      Account.getCaseWorker().then(function (caseWorker) {
        $scope.caseWorker = caseWorker;
      });

      $scope.messages = [];
      $scope.userMessage = {};

      function loadMessages() {
        messagesFactory.getMessages().then(function (messages) {
          $scope.messages = messages;
        });
      }

      $scope.sendMessage = function () {
        messagesFactory.sendMessage($scope.caseWorker, $scope.userMessage).then(function () {
          $scope.userMessage = {};
          $scope.caseWorkerMessageForm.$setPristine();
          loadMessages();
        });
      };

      $scope.replyToMessage = function (message) {
        $scope.replyTo = message;
        $scope.userMessage = {
          inReplyToId: message.id,
          subject: 'RE: ' + message.subject
        };
      };

      $scope.deleteMessage = function (id) {
        messagesFactory.deleteMessage(id).then(loadMessages);
      };

      $scope.resetMessage = function () {
        $scope.replyTo = undefined;
        $scope.userMessage = {};
      };

      $scope.toMe = function (msg) {
        return account !== undefined && account.email === msg.toEmail;
      };
      $scope.fromMe = function (msg) {
        return account !== undefined && account.email === msg.fromEmail;
      };

      loadMessages();
    }
  };
});
