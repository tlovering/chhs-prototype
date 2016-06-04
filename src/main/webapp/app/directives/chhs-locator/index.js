'use strict';

angular.module('chhs').directive('chhsLocator', function () {
  return {
    restrict: 'C',
    templateUrl: 'app/directives/chhs-locator/index.jsp',
    controller: function($scope){

      $scope.mapSettings = {
        center: {
          latitude: 37.1870327,
          longitude: -119.7638647
        },
        zoom: 5
      };

      $scope.results = [{
        id: '1',
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804',
        lat: '37.08496441',
        long: '-115.55516417'
      },{
        id: '2',
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804',
        lat: '32.50273697',
        long: '-115.58794864'
      },{
        id: '3',
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804',
        lat: '38.53952917',
        long: '-111.54543196'
      },{
        id: '4',
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804',
        lat: '37.02980749',
        long: '-116.44910088'
      },{
        id: '5',
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804',
        lat: '41.97653938',
        long: '-125.62414696'
      },{
        id: '6',
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804',
        lat: '42.685849',
        long: '-124.54796205'
      },{
        id: '7',
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804',
        lat: '40.93401866',
        long: '-115.02227962'
      },{
        id: '8',
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804',
        lat: '36.51460575',
        long: '-120.01719126'
      },{
        id: '9',
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804',
        lat: '37.17646077',
        long: '-120.39401615'
      },{
        id: '10',
        name: 'Alameda County Social Services Agency',
        street: '410 Broadway',
        city: 'Oakland',
        state: 'CA',
        phone: '(510) 268-2422',
        number: '15200804',
        lat: '40.16825832',
        long: '-113.15650865'
      }];

    }
  }
});
