(function () {
	'use strict';

	angular
		.module('app', ['ngRoute', 'ngCookies','ui.bootstrap'])
		.config(config)
		.run(run);

	config.$inject = ['$routeProvider', '$locationProvider'];
	function config($routeProvider, $locationProvider) {
		$routeProvider
			.when('/', {
				controller: 'HomeController',
				templateUrl: 'assets/templates/index.html',
				controllerAs: 'vm'
			})

			.when('/login', {
				controller: 'LoginController',
				templateUrl: 'assets/templates/login.html',
				controllerAs: 'vm'
			})

			.when('/register', {
				controller: 'RegisterController',
				templateUrl: 'assets/templates/register.html',
				controllerAs: 'vm'
			})
			.when('/redirectActivation/activation_id/:id', {
				controller: 'setPasswordController',
				templateUrl: 'assets/templates/setPassword.html',
				controllerAs: 'vm'
			})
			.when('/aboutus', {
				controller: 'aboutusController',
				templateUrl: 'assets/templates/about-us.html',
				controllerAs: 'vm'
			})
			

			.otherwise({ redirectTo: '/login' });
	}

	run.$inject = ['$rootScope', '$location', '$cookieStore', '$http'];
	function run($rootScope, $location, $cookieStore, $http) {
		// keep user logged in after page refresh
		$rootScope.globals = $cookieStore.get('globals') || {};
		if ($rootScope.globals.currentUser) {
			$http.defaults.headers.common['Authorization'] = 'Basic ' + $rootScope.globals.currentUser.authdata; // jshint ignore:line
		}

		$rootScope.$on('$locationChangeStart', function (event, next, current) {
			// redirect to login page if not logged in and trying to access a restricted page
			var restrictedPage = $.inArray($location.path(), ['/login', '/register', '/aboutus','/redirectActivation/activation_id/:id']) === -1;
			var loggedIn = $rootScope.globals.currentUser;
			/*if (restrictedPage && !loggedIn) {
				$location.path('/login');
			}*/
		});
	}

})();