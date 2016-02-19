(function () {
	'use strict';

	angular.module('app').directive('loginBackImage',[function(){
		return {
			restrict:'E',
			scope:{},
			link:function(scope,element,attrs){
				scope.$on('$destroy',function(){
					$('body').css('background-image','');
					$('header').css("display","block");
					$('footer').css("display","block");
					$('#bottom').css("display","block");

				});

				$('body').css('background-image','url(assets/images/background1.jpg)');
				$('header').css("display","none");
				$('footer').css("display","none");
				$('#bottom').css("display","none");
			},
			controller:"LoginController"
		};
	}]);
	angular.module("app").directive("activeTab",[function(){
		return{
			restrict:"A",
			scope:{},
			controller:['$scope','activepageInfo',function($scope,activepageInfo){

				$scope.activepageInfo = activepageInfo;

			}],
			link:function(scope,element,attrs,controllersArr){

				//var route=location.hash.split("/")[location.hash.split("/").length-1];
				scope.$watch('activepageInfo.name',function(){
					if(element.attr("name")==scope.activepageInfo.name){
						element.addClass("active");
					}else{
						element.removeClass("active");
					}
				});
				
			}
		}

	}]);

	angular.module('app').factory('activepageInfo',[function(){
		return {
			name:''
		}
	}]);
})();