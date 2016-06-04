<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<%--<sec:authorize access="isAnonymous()">--%>
<div class="register">
  <div class="register__header">
    <h4>CREATE ACCOUNT</h4>
  </div>
  <div class="register__content">
    <div class="register__summary">
      <p>Create a user account to find and communicate with foster facilities and case workers in your area.</p>
    </div>
    <form name="registerForm" class="register__form" ng-submit="createAccount(registerForm.$valid)" novalidate>
        <div class="container">
          <div class="row">
            <div class="register__input-col col-sm-6">
              <input type="text" name="first" placeholder="First Name" class="register__input form-control" required ng-model="register.data.first">
            </div>
            <div class="register__input-col col-sm-6">
              <input type="text" name="last" placeholder="Last Name" class="register__input form-control" required ng-model="register.data.last">
            </div>
          </div>
          <div class="row">
            <div class="register__input-col col-sm-12">
              <input name="address" class="register__input form-control" placeholder="Street Address" required ng-model="register.data.address">
            </div>
          </div>
          <div class="row">
            <div class="register__input-col col-sm-6">
              <input name="city" class="register__input form-control" placeholder="City" required ng-model="register.data.city">
            </div>
            <div class="register__input-col col-sm-3">
              <select name="state" class="register__input form-control" placeholder="State" required ng-model="register.data.state">
                <option value="" selected disabled>State</option>
                <option ng-repeat="state in register.states" value="{{state}}">{{state}}</option>
              </select>
            </div>
            <div class="register__input-col col-sm-3">
              <input name="zipcode" class="register__input form-control" placeholder="Zip Code" required ng-model="register.data.zipcode">
            </div>
          </div>
          <div class="row">
            <div class="register__input-col col-sm-6">
              <input type="email" name="email" placeholder="Email" class="register__input form-control" required ng-model="register.data.email">
            </div>
            <div class="register__input-col col-sm-6">
              <input type="email" name="emailre" placeholder="Re-enter email" class="register__input form-control" required ng-model="register.data.emailre">
            </div>
          </div>
          <div class="row">
            <div class="register__input-col col-sm-6">
              <input type="text" name="password" placeholder="Password" class="register__input form-control" required ng-model="register.data.password">
            </div>
            <div class="register__input-col col-sm-6">
              <input type="text" name="passwordre" placeholder="Re-enter password" class="register__input form-control" required ng-model="register.data.passwordre">
            </div>
          </div>
        </div>
      <p class="register__required-label"><span>*</span> All fields are required.</p>
      <p>Passwords must match and be at least 10 characters long, contain at least one number, one uppercase A-Z, and one lower case a-z.</p>
      <input id="termsCheckbox" name="terms" type="checkbox" required ng-model="register.data.terms">
      <label for="termsCheckbox">Yes, I have read and accept the Terms and Conditions</label>

      <div class="register__alert alert alert-danger" role="alert" ng-show="registerForm.first.$error.required && register.submitted">
          First name is required.
      </div>
      <div class="register__alert alert alert-danger" role="alert" ng-show="registerForm.last.$error.required && register.submitted">
        Last name is required.
      </div>
      <div class="register__alert alert alert-danger" role="alert" ng-show="registerForm.address.$error.required && register.submitted">
        Address is required.
      </div>
      <div class="register__alert alert alert-danger" role="alert" ng-show="registerForm.city.$error.required && register.submitted">
        City is required.
      </div>
      <div class="register__alert alert alert-danger" role="alert" ng-show="registerForm.state.$error.required && register.submitted">
        State is required.
      </div>
      <div class="register__alert alert alert-danger" role="alert" ng-show="registerForm.zipcode.$error.required && register.submitted">
        Zip code is required.
      </div>
      <div class="register__alert alert alert-danger" role="alert" ng-show="!register.zipcodeValid() && register.submitted">
        Zip code is invalid.
      </div>
      <div class="register__alert alert alert-danger" role="alert" ng-show="registerForm.email.$error.required && register.submitted">
        Email is required.
      </div>
      <div class="register__alert alert alert-danger" role="alert" ng-show="registerForm.email.$invalid && !registerForm.email.$error.required && register.submitted">
        Email is invalid.
      </div>
      <div class="register__alert alert alert-danger" role="alert" ng-show="!register.emailsMatch() && register.submitted">
        Emails must match.
      </div>
      <div class="register__alert alert alert-danger" role="alert" ng-show="registerForm.password.$error.required && register.submitted">
        Password is required.
      </div>
      <div class="register__alert alert alert-danger" role="alert" ng-show="!register.passwordValid() && register.submitted">
        Password is invalid.
      </div>
      <div class="register__alert alert alert-danger" role="alert" ng-show="!register.passwordsMatch() && register.submitted">
        Passwords must match.
      </div>
      <div class="register__alert alert alert-danger" role="alert" ng-show="registerForm.terms.$error.required && register.submitted">
        Please accept the Terms and Conditions.
      </div>

      <div class="register__submit row">
        <div class="register__input-col col-sm-6">
          <button class="register__btn-cancel form-control btn btn-default" ng-click="register.cancel()">CANCEL</button>
        </div>
        <div class="register__input-col col-sm-6">
          <input type="submit" value="CREATE ACCOUNT" class="register__btn-create form-control btn btn-default" ng-click="register.createAccount()">
        </div>
      </div>
    </form>
  </div>
</div>
<%--</sec:authorize>--%>
