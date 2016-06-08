'use strict';

angular.module('chhs').directive('siteHeader', function () {
  return {
    restrict: 'C',
    templateUrl: 'app/directives/site-header/index.jsp',
    controller: function($scope, messagesFactory){
      $scope.messageCount = null;

      messagesFactory.getMessages().then(function(messages){
        $scope.messageCount = messages.length;
      });

    }
  };
});
