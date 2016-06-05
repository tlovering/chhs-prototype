'use strict';

angular.module('chhs').directive('caseWorkerMessenger', function (messagesFactory) {
  return {
    restrict: 'C',
    templateUrl: 'app/directives/case-worker-messenger/index.jsp',
    controller: function ($scope) {

      $scope.messages = [];
      $scope.userMessage = {
        to: '',
        from: '',
        message: ''
      };

      messagesFactory.getMessages().then(function (messages) {
        $scope.messages = messages;
      });

      $scope.sendMessage = function (from, to, message) {
        messagesFactory.sendMessage(from, to, message).then(function () {
          $scope.userMessage = {};
          $scope.caseWorkerMessageForm.$setPristine();
        });
      };

      $scope.replyTo = function (from, to) {
        $scope.userMessage.from = from;
        $scope.userMessage.to = to;
      };

    }
  };
});
