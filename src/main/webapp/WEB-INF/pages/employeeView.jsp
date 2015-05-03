<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Employee View</title>
</head>
<body>
	<div ng-app="myApp" ng-controller="myCtrl"> 
	<ul>
		<li ng-repeat="x in names">{{ x.id + ', ' + x.name}}</li>
	</ul>
	</div>
<script src="<c:url value="/resources/js/lib/angular.min.js"/>" type="text/javascript"></script>	
<script src="<c:url value="/resources/js/lib/oauth.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/js/employeeView.js"/>" type="text/javascript"></script>
</body>
</html>