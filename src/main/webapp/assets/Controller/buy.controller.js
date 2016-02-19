(function () {
	'use strict';
 
	angular
		.module('app')
		.controller('buyController', buyController);
 
	buyController.$inject = ['$location','$scope','activepageInfo' ,'AuthenticationService', 'FlashService'];
	function buyController($location,$scope,activepageInfo){
		activepageInfo.name = 'buy';
  	}

})();