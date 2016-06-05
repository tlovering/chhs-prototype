<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<%--<sec:authorize access="isAnonymous()">--%>
<div class="register container">
  <h4 class="register__header">CREATE ACCOUNT</h4>

  <div class="row">
    <div class="col-sm-6 col-sm-offset-3">
      <div class="register__summary">
        <p>Create a user account to find and communicate with foster facilities and case workers in your area.</p>
      </div>

      <form name="registerForm" ng-submit="createAccount(registerForm.$valid)" novalidate>

        <div class="row">
          <div class="col-sm-6 form-group">
            <input type="text" name="first" placeholder="First Name" class="form-control" required ng-model="register.data.first">
          </div>
          <div class="col-sm-6 form-group">
            <input type="text" name="last" placeholder="Last Name" class="form-control" required ng-model="register.data.last">
          </div>
        </div>
        <div class="row">
          <div class="col-sm-12 form-group">
            <input name="address" class="form-control" placeholder="Street Address" required ng-model="register.data.address">
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6 form-group">
            <input name="city" class="form-control" placeholder="City" required ng-model="register.data.city">
          </div>
          <div class="col-sm-3 form-group">
            <select name="state" class="form-control" placeholder="State" required ng-model="register.data.state">
              <option value="" selected disabled>State</option>
              <option ng-repeat="state in register.states" value="{{state}}">{{state}}</option>
            </select>
          </div>
          <div class="col-sm-3 form-group">
            <input name="zipcode" class="form-control" placeholder="Zip Code" required ng-model="register.data.zipcode">
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6 form-group">
            <input type="email" name="email" placeholder="Email" class="form-control" required ng-model="register.data.email">
          </div>
          <div class="col-sm-6 form-group">
            <input type="email" name="emailre" placeholder="Re-enter email" class="form-control" required ng-model="register.data.emailre">
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6 form-group">
            <input type="text" name="password" placeholder="Password" class="form-control" required ng-model="register.data.password">
          </div>
          <div class="col-sm-6 form-group">
            <input type="text" name="passwordre" placeholder="Re-enter password" class="form-control" required ng-model="register.data.passwordre">
          </div>
        </div>

        <p><span class="register__required-asterisk">*</span> All fields are required.</p>
        <p>Passwords must match and be at least 10 characters long, contain at least one number, one uppercase A-Z, and one lower case a-z.</p>

        <div class="form-group">
          <input id="termsCheckbox" name="terms" type="checkbox" required ng-model="register.data.terms">
          <label for="termsCheckbox">Yes, I have read and accept the Terms and Conditions</label>
        </div>

        <div class="alert alert-danger" role="alert" ng-show="registerForm.first.$error.required && register.submitted">
          First name is required.
        </div>
        <div class="alert alert-danger" role="alert" ng-show="registerForm.last.$error.required && register.submitted">
          Last name is required.
        </div>
        <div class="alert alert-danger" role="alert" ng-show="registerForm.address.$error.required && register.submitted">
          Address is required.
        </div>
        <div class="alert alert-danger" role="alert" ng-show="registerForm.city.$error.required && register.submitted">
          City is required.
        </div>
        <div class="alert alert-danger" role="alert" ng-show="registerForm.state.$error.required && register.submitted">
          State is required.
        </div>
        <div class="alert alert-danger" role="alert" ng-show="registerForm.zipcode.$error.required && register.submitted">
          Zip code is required.
        </div>
        <div class="alert alert-danger" role="alert" ng-show="!register.zipcodeValid() && register.submitted">
          Zip code is invalid.
        </div>
        <div class="alert alert-danger" role="alert" ng-show="registerForm.email.$error.required && register.submitted">
          Email is required.
        </div>
        <div class="alert alert-danger" role="alert" ng-show="registerForm.email.$invalid && !registerForm.email.$error.required && register.submitted">
          Email is invalid.
        </div>
        <div class="alert alert-danger" role="alert" ng-show="!register.emailsMatch() && register.submitted">
          Emails must match.
        </div>
        <div class="alert alert-danger" role="alert" ng-show="registerForm.password.$error.required && register.submitted">
          Password is required.
        </div>
        <div class="alert alert-danger" role="alert" ng-show="!register.passwordValid() && register.submitted">
          Password is invalid.
        </div>
        <div class="alert alert-danger" role="alert" ng-show="!register.passwordsMatch() && register.submitted">
          Passwords must match.
        </div>
        <div class="alert alert-danger" role="alert" ng-show="registerForm.terms.$error.required && register.submitted">
          Please accept the Terms and Conditions.
        </div>

        <div class="row">
          <div class="col-sm-6 col-sm-push-6 form-group">
            <input type="submit" value="CREATE ACCOUNT" class="register__btn-create form-control btn btn-primary" ng-click="register.createAccount()">
          </div>
          <div class="col-sm-6 col-sm-pull-6 form-group">
            <button type="button" class="form-control btn btn-default" ng-click="register.cancel()">CANCEL</button>
          </div>
        </div>

      </form>

    </div>
  </div>

</div>
<%--</sec:authorize>--%>
