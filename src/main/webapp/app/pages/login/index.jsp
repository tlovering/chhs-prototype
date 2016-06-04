<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="login">
  <div class="login__header">
    <h4>SIGN IN</h4>
  </div>
  <%--<sec:authorize access="isAnonymous()">--%>
  <div class="login__alert alert alert-danger" role="alert" ng-if="login.error">
    Incorrect username or password.
  </div>
  <form class="login__form">
    <label for="email">Email:</label>
    <input class="form-control" type="text" id="email" placeholder="Email" ng-model="login.auth.email"/>
    <label for="password">Password:</label>
    <input class="form-control" type="password" id="password" placeholder="Password" ng-model="login.auth.password"/>
    <button type="submit" class="btn btn-default" ng-click="login.login()">LOG IN</button>
  </form>
  <%--</sec:authorize>--%>
  <div class="login__divider container">
    <div class="row">
      <div class="col-xs-5">
        <hr>
      </div>
      <div class="login__divider-or col-xs-2">OR</div>
      <div class="col-xs-5">
        <hr>
      </div>
    </div>
  </div>

  <div class="login__create-account">
    <a href="#/register"><button class="btn btn-default">CREATE NEW ACCOUNT</button></a>
  </div>
</div>

