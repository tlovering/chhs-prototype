'use strict';

angular.module('chhs').directive('chhsLocator', function () {
  return {
    restrict: 'C',
    templateUrl: 'app/directives/chhs-locator/index.jsp',
    controller: function($scope){

      $scope.map = { center: { latitude: 45, longitude: -73 }, zoom: 8 };

      $scope.results = [{
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804'
      },{
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804'
      },{
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804'
      },{
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804'
      },{
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804'
      },{
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804'
      },{
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804'
      }];

    }
  }
});
