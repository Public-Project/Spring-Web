(function () {
	'use strict';
 
	angular
		.module('app')
		.controller('HomeController', HomeController);
 
	HomeController.$inject = ['$location','$scope','pageInfo', 'AuthenticationService', 'FlashService'];
	/*function HomeController($location, AuthenticationService, FlashService) {
		var vm = this;
 
		
	}*/
	function HomeController($location,$scope,pageInfo){
  		$scope.myInterval = 3000;

  		pageInfo.name = '';
  		/*$scope.getClassNitin = function (path) {
		  if ($location.path().substr(0, path.length) === path) {
		    return 'active';
		  } else {
		    return '';
		  }
		}*/
  		/*$scope.slides = [{
				image: 'http://lorempixel.com/400/200/'
			},
			{
				image: 'http://lorempixel.com/400/200/food'
			},
			{
				image: 'http://lorempixel.com/400/200/sports'
			},
			{
				image: 'http://lorempixel.com/400/200/people'
			}
		];*/
	}
	/*angular.module("app").directive("activeTab",[function(){
		return{
			restrict:"E",
			scope:{},
			link:function(scope,element,attrs){
				alert("we")
			}
		}

	}]);*/

})();