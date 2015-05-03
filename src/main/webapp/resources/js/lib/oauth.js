var oAuth = {
		clientId : "",
		username : "",
		password : "",
		//authServer : "http://localhost:8080/oauth/token",
		//redirectUri : "http://localhost:8080/employee",
		authServer : "/oauth/token",
		redirectUri : "/employeeView",
		clientId : "my-trusted-client",
		
		
		authUri : function() {
			var url = this.authServer + 
			  "?grant_type=password" +
			  "&client_id=" + this.clientId +
			  "&username=" + this.username + 
			  "&password=" + this.password;
			return url;
		},
	
		// Method to get the refresh token using oauth2 scheme
		// The refresh token will be placed at browser session storage to be used during transaction
		authenticate : function($http,$scope) {
			var url = this.authUri();

			$http.post(url).success(
					function(response) {
						window.sessionStorage.setItem("refresh_token",response.refresh_token);
						window.sessionStorage.setItem("access_token",response.access_token);
						window.sessionStorage.setItem("token_expires",response.expires_in);
						window.location.replace(oAuth.redirectUri);
					}
			).error(
					function(data,status) {
						if (status == 400) $scope.error_message = "Invalid User Name or Password";
					}
			);	
		},
		
		// Method to invoke any REST request through oauth2 implicit scheme
		// This method will invoke the url asynchronously
		// Example on how to use this :
		// oAuth.invokeSecure($http,"http://localhost:8080/employee", 
		//		function(response){
		//			alert(response);
		//		}
		//	);
		invokeSecure : function($http,url,callback) {
			var tokenUrl = this.authServer + "?grant_type=refresh_token" +
					"&client_id=" + this.clientId +
					"&refresh_token=" + window.sessionStorage.getItem("refresh_token");
			$http.post(tokenUrl).success(
					function(response) {
						var modifiedUrl = url + "?access_token=" + response.access_token;
						$http.get(modifiedUrl).success(
							function(response) {
								callback(response);
							}
						);
					}
			);
		}
}