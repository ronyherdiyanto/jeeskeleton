<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/js/login.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/js/lib/bootstrap/css/bootstrap.min.css"/>">
</head>
<body>
	<div ng-app="loginApp" ng-controller="loginCtrl" class="container vertical-center">
		<div class="row">
			<div class="col-sm-4">&nbsp;</div>
			<div class="col-sm-2" style="text-align: right;">User Name :</div>
			<div class="col-sm-2"><input type="text" id="username" ng-model="username"></div>
			<div class="col-sm-4">&nbsp;</div>
		</div>
		<div class="row">
			<div class="col-sm-4">&nbsp;</div>
			<div class="col-sm-2" style="text-align: right;">Password :</div>
			<div class="col-sm-2"><input type="text" id="password" ng-model="password"></div>
			<div class="col-sm-4">&nbsp;</div>
		</div>
		<div class="row">
			<div class="col-sm-4">&nbsp;</div>
			<div class="col-sm-2" style="text-align: right;"><button type="button" id="Login" ng-click="login()">Login</button></div>
			<div class="col-sm-2">&nbsp;</div>
			<div class="col-sm-4">&nbsp;</div>
		</div>
		<div class="row">
			<div class="col-sm-4">&nbsp;</div>
			<div class="col-sm-8">
				<p ng-hide="myVar">
				User Name : {{username}} <br> Password : {{password}} <br>
				Access Token = {{access_token}} <br> Refresh Token =
				{{refresh_token}} <br> Error Message {{error_message}}
				</p>
			</div>
		</div>
	</div>
<script src="<c:url value="/resources/js/lib/angular.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/js/lib/jquery-2.1.3.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/js/lib/oauth.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/js/lib/bootstrap/js/bootstrap.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/js/login.js"/>" type="text/javascript"></script>
</body>
</html>