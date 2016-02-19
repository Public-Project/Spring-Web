(function () {
	'use strict';
 
	angular
		.module('app')
		.controller('aboutusController', aboutusController);
 
	aboutusController.$inject = ['$location','$scope','activepageInfo' ,'AuthenticationService', 'FlashService'];
	function aboutusController($location,$scope,activepageInfo){
		activepageInfo.name = 'aboutus';
  	}

})();