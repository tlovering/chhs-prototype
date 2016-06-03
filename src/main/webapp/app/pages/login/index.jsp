<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="login">
  <div class="login__header">
    <h4>SIGN IN</h4>
  </div>
  <%--<sec:authorize access="isAnonymous()">--%>
    <form class="login__form">
      <input class="form-control" type="text" placeholder="Email"/>
      <input class="form-control" type="password" placeholder="Password"/>
      <button type="submit" class="btn btn-default">Log In</button>
    </form>
  <%--</sec:authorize>--%>
</div>

