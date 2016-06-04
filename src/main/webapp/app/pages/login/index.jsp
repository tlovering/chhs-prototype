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
      <input class="form-control" type="text" placeholder="Email" ng-model="login.auth.email"/>
      <input class="form-control" type="password" placeholder="Password" ng-model="login.auth.password"/>
      <button type="submit" class="btn btn-default" ng-click="login.login()">Log In</button>
    </form>
  <%--</sec:authorize>--%>
</div>

