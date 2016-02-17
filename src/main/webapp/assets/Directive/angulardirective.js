(function () {
	'use strict';

	angular.module('app').directive('loginBackImage',[function(){
		return {
			restrict:'E',
			scope:{},
			link:function(scope,element,attrs){
				scope.$on('$destroy',function(){
					$('body').css('background-image','');
				});

				$('body').css('background-image','url(assets/images/background1.jpg)');
			},
			controller:"LoginController"
		};
	}]);
	
})();