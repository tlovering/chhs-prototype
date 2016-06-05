'use strict';

angular.module('chhs').directive('caseWorkerMessenger', function (messagesFactory) {
  return {
    restrict: 'C',
    templateUrl: 'app/directives/case-worker-messenger/index.jsp',
    controller: function ($scope) {

      $scope.messages = [];
      $scope.userMessage = {
        caseWorkerId: '',
        message: ''
      };

      messagesFactory.getMessages().then(function (messages) {
        $scope.messages = messages;
      });

      $scope.sendMessage = function (caseWorkerId, message) {
        messagesFactory.sendMessage(caseWorkerId, message).then(function () {
          $scope.userMessage = {};
          $scope.caseWorkerMessageForm.$setPristine();
        });
      };

      $scope.replyToMessage = function (caseWorkerId) {
        $scope.userMessage.caseWorkerId = caseWorkerId;
      };

      $scope.deleteMessage = function (id) {
        // TODO
      };

      $scope.resetMessage = function(){
        $scope.userMessage = {};
      };

    }
  };
});
