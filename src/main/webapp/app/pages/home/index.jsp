<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%--<p ng-if="home.account">Welcome {{home.account.firstName}} {{home.account.lastName}}</p>--%>
<%--Secured item.--%>
<div class="page-home container-fluid">

  <div class="page-home__banner">
    <img class="page-home__banner-image" src="http://placekitten.com/g/1200/400">
    <h2 class="page-home__banner-slogan">Connecting families with foster caregivers</h2>
  </div>

  <sec:authorize access="isAnonymous()">
    <section class="secondary-nav container-fluid">
      <div class="row">
        <div class="page-home__info-col page-home__info-col-login-btn col-md-1">
          <div>LOG IN</div>
        </div>
        <div class="page-home__info-col page-home__info-col-login-info col-md-5">
          <div>
            <p><a href="/">Create an account</a> to find and communicate with foster homes in your area.</p>
          </div>
        </div>
        <div class="page-home__info-col page-home__info-col-account-btn col-md-1">
          <div>NEW ACCOUNT</div>
        </div>
        <div class="page-home__info-col page-home__info-col-account-info col-md-5">
          <div>
            <p><a href="/">Sign in</a> to find and communicate with foster homes in your area.</p>
          </div>
        </div>
      </div>
    </section>
  </sec:authorize>

  <section class="page-home__summary">
    <div class="page-home__summary-section col-md-4">
      <div class="page-home__summary-content">
        <h4 class="page-home__summary-header">Foster Home Locator</h4>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit.
          Aenean euismod bibendum laoreet. Proin
          gravida dolor sit amet lacus accumsan et viverra justo
          commodo. Proin sodales pulvinar tempor.
        </p>
        <p>
          Cum sociis natoque penatibus et magnis dis parturient
          montes, nascetur ridiculus mus.
        </p>
      </div>
    </div>
    <div class="page-home__summary-section col-md-4">
      <div class="page-home__summary-content">
        <h4 class="page-home__summary-header">Message Caseworkers</h4>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit.
          Aenean euismod bibendum laoreet. Proin
          gravida dolor sit amet lacus accumsan et viverra justo
          commodo. Proin sodales pulvinar tempor.
        </p>
        <p>
          Cum sociis natoque penatibus et magnis dis parturient
          montes, nascetur ridiculus mus.
        </p>
      </div>
    </div>
    <div class="page-home__summary-section col-md-4">
      <div class="page-home__summary-content">
        <h4 class="page-home__summary-header">About/Contact CWDS</h4>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit.
          Aenean euismod bibendum laoreet. Proin
          gravida dolor sit amet lacus accumsan et viverra justo
          commodo. Proin sodales pulvinar tempor.
        </p>
        <div>
          <strong>CWDS</strong>
          <div>Address, City, ST 94445</div>
          <div>(800) 555-1212</div>
          <div>email@2email.com</div>
        </div>
      </div>
    </div>
  </section>
</div>
