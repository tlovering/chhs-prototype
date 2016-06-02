<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%--<h3>Home Pages!</h3>--%>


<sec:authorize access="isAuthenticated()">
    <%--<p ng-if="home.account">Welcome {{home.account.firstName}} {{home.account.lastName}}</p>--%>
    <%--Secured item.--%>
    <main class="page-home">
        <div class="home-banner">
            <img src="http://placekitten.com/g/1200/400">
            <h2>Connecting families with foster caregivers</h2>
        </div>
        <section class="secondary-nav container-fluid">
            <div class="row">
                <div class="info-col col-login-btn col-md-1">
                    <div>LOG IN</div>
                </div>
                <div class="info-col col-login-info col-md-5">
                    <div>
                        <p><a href="/">Create an account</a> to find and communicate with foster homes in your area.</p>
                    </div>
                </div>
                <div class="info-col col-account-btn col-md-1">
                    <div>NEW ACCOUNT</div>
                </div>
                <div class="info-col col-account-info col-md-5">
                    <div>
                        <p><a href="/">Sign in</a> to find and communicate with foster homes in your area.</p>
                    </div>
                </div>
            </div>
        </section>
        <section class="home-summary">
            <div class="summary-section col-md-4">
                <div class="summary-content">
                    <h4>Foster Home Locator</h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin
                        gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor.
                    </p>
                    <p>
                        Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                    </p>
                </div>
            </div>
            <div class="summary-section col-md-4">
                <div class="summary-content">
                    <h4>Message Caseworkers</h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin
                        gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor.
                    </p>
                    <p>
                        Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                    </p>
                </div>
            </div>
            <div class="summary-section col-md-4">
                <div class="summary-content">
                    <h4>About/Contact CWDS</h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin
                        gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor.
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
    </main>

</sec:authorize>
<sec:authorize access="isAnonymous()">

    <form>
        <input ng-model="home.auth.email" type="text" placeholder="EMail"/>
        <input ng-model="home.auth.password" type="password" placeholder="Password"/>
        <button ng-click="home.login()">Login</button>
    </form>
</sec:authorize>