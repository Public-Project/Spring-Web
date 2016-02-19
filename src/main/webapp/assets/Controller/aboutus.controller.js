(function () {
	'use strict';
 
	angular
		.module('app')
		.controller('aboutusController', aboutusController);
 
	aboutusController.$inject = ['$location','$scope','pageInfo' ,'AuthenticationService', 'FlashService'];
	function aboutusController($location,$scope,pageInfo){
		pageInfo.name = 'aboutus';
  	}

})();