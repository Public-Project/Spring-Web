(function () {
	'use strict';
 
	angular
		.module('app')
		.controller('contactsController', contactsController);
 
	contactsController.$inject = ['$location','$scope','activepageInfo' ,'AuthenticationService', 'FlashService'];
	function contactsController($location,$scope,activepageInfo){
		activepageInfo.name = 'contacts';
  	}

})();