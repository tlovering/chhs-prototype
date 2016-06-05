'use strict';

angular.module('chhs').directive('caseWorkerMessenger', function (messagesFactory) {
  return {
    restrict: 'C',
    templateUrl: 'app/directives/case-worker-messenger/index.jsp',
    controller: function($scope){

      $scope.messages = [];

      messagesFactory.getMessages().then(function(messages){
        $scope.messages = messages;
      });

    }
  };
});
