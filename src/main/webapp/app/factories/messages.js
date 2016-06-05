angular.module('chhs').factory('messagesFactory', function ($http, $log, $q) {

  var messages = [{
    id: 1,
    from: 'Case Worker',
    to: 'Me',
    date: 0,
    message: 'Hello World!'
  },{
    id: 2,
    from: 'Me',
    to: 'Case Worker',
    date: 12398051,
    message: 'Alo!'
  },{
    id: 3,
    from: 'Case Worker',
    to: 'Me',
    date: 0,
    message: 'Hello World!'
  },{
    id: 4,
    from: 'Me',
    to: 'Case Worker',
    date: 12398051,
    message: 'Alo!'
  },{
    id: 5,
    from: 'Case Worker',
    to: 'Me',
    date: 0,
    message: 'Hello World!'
  },{
    id: 6,
    from: 'Me',
    to: 'Case Worker',
    date: 12398051,
    message: 'Alo!'
  },{
    id: 7,
    from: 'Case Worker',
    to: 'Me',
    date: 0,
    message: 'Hello World!'
  },{
    id: 8,
    from: 'Me',
    to: 'Case Worker',
    date: 12398051,
    message: 'Alo!'
  },{
    id: 9,
    from: 'Case Worker',
    to: 'Me',
    date: 0,
    message: 'Hello World!'
  },{
    id: 10,
    from: 'Me',
    to: 'Case Worker',
    date: 12398051,
    message: 'Alo!'
  }]

  function getMessages(){
    return $q(function(resolve, reject){
      resolve(messages);
    });
  }

  return {
    getMessages: getMessages
  };
});
