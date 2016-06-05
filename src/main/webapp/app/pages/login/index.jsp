<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="login container">
  <h4 class="login__header">SIGN IN</h4>

  <%--<sec:authorize access="isAnonymous()">--%>

  <div class="row">
    <div class="col-sm-4 col-sm-offset-4">
      <div class="alert alert-danger" role="alert" ng-if="login.error">
        Incorrect username or password.
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-sm-4 col-sm-offset-4">
      <form class="login__form">
        <div class="form-group">
          <label for="email">Email:</label>
          <input class="form-control" type="text" id="email" placeholder="Email" ng-model="login.auth.email"/>
        </div>
        <div class="form-group">
          <label for="password">Password:</label>
          <input class="form-control" type="password" id="password" placeholder="Password" ng-model="login.auth.password"/>
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-primary form-control" ng-click="login.login()">LOG IN</button>
        </div>
      </form>
    </div>
  </div>

  <%--</sec:authorize>--%>

  <div class="row">
    <div class="login__divider-line col-xs-10 col-xs-offset-1 col-sm-4 col-sm-offset-4">
      <span class="login__divider-text ">OR</span>
    </div>
  </div>

  <div class="row">
    <div class="col-sm-4 col-sm-offset-4">
      <a href="#/register" class="btn btn-default form-control">CREATE NEW ACCOUNT</a>
    </div>
  </div>

</div>

