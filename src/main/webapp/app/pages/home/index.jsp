<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="page-home container">

  <div class="site-banner"></div>

  <sec:authorize access="isAnonymous()">
    <div class="site-account-cta"></div>
  </sec:authorize>

  <section class="page-home__summary">
    <div class="page-home__summary-section col-md-4">
      <div class="page-home__summary-content">
        <img class="page_home_summary-img" src="app/assets/home/locator.png">
        <h4 class="page-home__summary-header"><a href="#/dashboard">Foster Home Locator</a></h4>
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
        <img class="page_home_summary-img" src="app/assets/home/message_caseworkers.png">
        <h4 class="page-home__summary-header"><a href="#/dashboard">Message Caseworkers</a></h4>
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
        <img class="page_home_summary-img" src="app/assets/home/contact.png">
        <h4 class="page-home__summary-header"><a href="#/dashboard">About/Contact CWDS</a></h4>
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
