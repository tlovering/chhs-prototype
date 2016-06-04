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
    <form class="register__form">
        <div class="container">
          <div class="row">
            <div class="register__input-col col-sm-6">
              <input type="text" placeholder="First Name" class="register__input form-control" required ng-model="register.data.first">
            </div>
            <div class="register__input-col col-sm-6">
              <input type="text" placeholder="Last Name" class="register__input form-control" required ng-model="register.data.last">
            </div>
          </div>
          <div class="row">
            <div class="register__input-col col-sm-12">
              <input class="register__input form-control" placeholder="Street Address" required ng-model="register.data.address">
            </div>
          </div>
          <div class="row">
            <div class="register__input-col col-sm-6">
              <input class="register__input form-control" placeholder="City" required ng-model="register.data.city">
            </div>
            <div class="register__input-col col-sm-3">
              <select class="register__input form-control" placeholder="State" required ng-model="register.data.state">
                <option value="" selected disabled>State</option>
                <option ng-repeat="state in register.states" value="{{state}}">{{state}}</option>
              </select>
            </div>
            <div class="register__input-col col-sm-3">
              <input class="register__input form-control" placeholder="Zip Code" required ng-model="register.data.zipcode">
            </div>
          </div>
          <div class="row">
            <div class="register__input-col col-sm-6">
              <input type="email" placeholder="Email" class="register__input form-control" required ng-model="register.data.email">
            </div>
            <div class="register__input-col col-sm-6">
              <input type="email" placeholder="Re-enter email" class="register__input form-control" required ng-model="register.data.email_re">
            </div>
          </div>
          <div class="row">
            <div class="register__input-col col-sm-6">
              <input type="text" placeholder="Password" class="register__input form-control" required ng-model="register.data.password">
            </div>
            <div class="register__input-col col-sm-6">
              <input type="text" placeholder="Re-enter password" class="register__input form-control" required ng-model="register.data.password_re">
            </div>
          </div>
        </div>
      <p class="register__required-label"><span>*</span> All fields are required.</p>
      <p>Passwords must match and be 18-20 characters long, contain at least one number, one uppercase A-Z, on lower case a-z, and a special character.</p>
      <input id="termsCheckbox" type="checkbox" required ng-model="register.data.terms">
      <label for="termsCheckbox">Yes, I have read and accept the Terms and Conditions</label>
      <div class="register__submit row">
        <div class="register__input-col col-sm-6">
          <button class="register__btn-cancel form-control btn btn-default" ng-click="register.cancel()">CANCEL</button>
        </div>
        <div class="register__input-col col-sm-6">
          <button class="register__btn-create form-control btn btn-default" ng-click="register.createAccount()">CREATE ACCOUNT</button>
        </div>
      </div>
    </form>
  </div>
</div>
<%--</sec:authorize>--%>
