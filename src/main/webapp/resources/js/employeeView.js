var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
	oAuth.invokeSecure($http, "/employee", function(
			response) {
		$scope.names = response.employees;
	});
});
