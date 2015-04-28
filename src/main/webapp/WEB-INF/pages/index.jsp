<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JEE Skeleton App</title>
</head>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<body>
	<div ng-app="myApp" ng-controller="myCtrl"> 
	<ul>
		<li ng-repeat="x in names">{{ x.id + ', ' + x.name}}</li>
	</ul>
	</div>
	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope, $http) {
			$http.get("http://localhost:8080/SpringSkeleton/employee").success(
					function(response) {
						$scope.names = response.employees;
					});
		});
	</script>

</body>
</html>