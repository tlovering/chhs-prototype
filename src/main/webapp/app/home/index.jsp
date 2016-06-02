
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<h3>Home Pages!</h3>


<sec:authorize access="isAuthenticated()">
	<p ng-if="home.account">Welcome {{home.account.firstName}} {{home.account.lastName}}</p>
	Secured item.
</sec:authorize>
<sec:authorize access="isAnonymous()">

	<form>
		<input ng-model="home.auth.email" type="text" placeholder="EMail"/>
		<input ng-model="home.auth.password" type="password" placeholder="Password"/>
		<button ng-click="home.login()">Login</button>
	</form>
</sec:authorize>