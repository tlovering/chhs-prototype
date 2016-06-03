<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<nav class="site-header__navigation navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse"
              data-target="#topNav">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="">
        <img alt="CWDS" src="">
      </a>
    </div>
    <div class="collapse navbar-collapse" id="topNav">
      <ul class="nav-links nav navbar-nav navbar-right">
        <sec:authorize access="isAnonymous()">
        <li><a href="">CREATE ACCOUNT</a></li>
        <li><a href="#/login">LOGIN</a></li>
        </sec:authorize>
        <li><a href="">HELP</a></li>
      </ul>
    </div>
  </div>
</nav>
