<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAnonymous()">
  <form>
    <input type="text" placeholder="EMail"/>
    <input type="password" placeholder="Password"/>
    <button>Login</button>
  </form>
</sec:authorize>
