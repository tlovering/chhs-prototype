'use strict';

angular.module('chhs').controller('registerCtrl', function ($log,$location, Account) {

  var register = this;
  register.data = {};

  register.states  =['AK','AL','AR','AZ','CA','CO','CT','DC','DE','FL','GA','GU','HI','IA','ID', 'IL','IN','KS','KY','LA','MA','MD','ME','MH','MI','MN','MO','MS','MT','NC','ND','NE','NH','NJ','NM','NV','NY', 'OH','OK','OR','PA','PR','PW','RI','SC','SD','TN','TX','UT','VA','VI','VT','WA','WI','WV','WY'];

  register.cancel = function(){
    $location.path('home');
  };

  register.createAccount = function(isValid){
    register.submitted = false;
    if(isValid){
      //create the account
    } else{
      register.submitted = true;
    }
  }

  register.zipcodeValid = function(){
    var reg = /^[0-9]{5}(?:-[0-9]{4})?$/;
    return reg.test(register.data.zipcode);
  }

  register.emailsMatch = function(){
    debugger;
    return register.data.email === register.data.emailre;
  }

  register.passwordsMatch = function(){
    return register.data.password === register.data.passwordre;
  }

  register.passwordValid = function(){
    var reg = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{10,}/;
    return reg.test(register.data.password);
  }



});
