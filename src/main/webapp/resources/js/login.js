var app = angular.module('loginApp', []);
app.controller('loginCtrl', function($scope,$http) {
	$scope.username = "";
	$scope.password = "";
	$scope.access_token = "";
	$scope.refresh_token = "";
	$scope.error_message = "";
	$scope.myVar = true;
	
	$scope.login = function() {
		oAuth.username = $scope.username;
		oAuth.password = $scope.password;
		oAuth.authenticate($http,$scope);	
	};
});