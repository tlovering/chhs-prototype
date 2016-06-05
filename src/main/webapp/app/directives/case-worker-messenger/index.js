'use strict';

angular.module('chhs').directive('caseWorkerMessenger', function (messagesFactory) {
  return {
    restrict: 'C',
    templateUrl: 'app/directives/case-worker-messenger/index.jsp',
    controller: function($scope){

      $scope.messages = [];
      $scope.userMessage = {
        recepient: '',
        message: ''
      };

      messagesFactory.getMessages().then(function(messages){
        $scope.messages = messages;
      });

      $scope.sendMessage = function(recepient, message){
        messagesFactory.sendMessage(recepient, message).then(function(){
          $scope.userMessage = {};
          $scope.caseWorkerMessageForm.$setPristine();
        });
      };

    }
  };
});
