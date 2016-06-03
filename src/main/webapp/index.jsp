<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CHHS</title>
		<link rel="stylesheet" href="/app/css/styles.css" media="screen"/>
    </head>
    <body ng-app="chhs">
		<nav-bar></nav-bar>
		<div ng-view>

		</div>

		<!-- build:externalJs lib/lib-all.js -->
		<script type="text/javascript" src="bower_components/jquery/dist/jquery.js"></script>
		<script type="text/javascript" src="bower_components/angular/angular.js"></script>
		<script type="text/javascript" src="bower_components/angular-cookies/angular-cookies.js"></script>
		<script type="text/javascript" src="bower_components/angular-route/angular-route.js"></script>
		<!-- endbuild -->

		<!-- build:appJs app/app-all.js -->
		<script type="text/javascript" src="app/application.js"></script>
		<script type="text/javascript" src="app/routes.js"></script>
		<script type="text/javascript" src="app/home/homeCtrl.js"></script>
		<!-- endbuild -->
    </body>
</html>
