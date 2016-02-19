(function(){
   'use strict';
	angular.module('app')
	.controller('setPasswordController',setPasswordController);

	setPasswordController.$inject = ['AuthenticationService', '$location', '$rootScope', 'FlashService'];
	function setPasswordController(AuthenticationService, $location, $rootScope, FlashService) {
		var vm = this;
 
		vm.setpassword = setpassword;
 		function setpassword() {
			vm.dataLoading = true;
			AuthenticationService.setPassword(vm.password,vm.confirmpassword
				,function (response) {
					if (response.success) {
						//FlashService.Success(response.message, true);
						$location.path('/login');
					} else {
						FlashService.Error(response.message);
						vm.dataLoading = false;
						$location.path('/login');
					}
				});
		}
	}
	angular.module('app').directive("pwCheck",[function(){
		return{
			require:"ngModel",
			link:function(scope,element,attrs,ctrl){
				var firstPassword = '#' + attrs.pwCheck;
				element.add(firstPassword).on('keyup', function () {
					scope.$apply(function () {
						var v=true;
						if(element.val()!="" && $(firstPassword).val()!=""){
							v = element.val()===$(firstPassword).val();
						}
						ctrl.$setValidity('pwmatch', v);
					});
				});
			}
		}
	}])
})();