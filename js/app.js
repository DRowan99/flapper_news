var app = angular.module('flapperNews', ['ui.router']);

app.config([
'$stateProvider',
'$urlRouterProvider',
function($stateProvider, $urlRouterProvider){

	$stateProvider
		.state('home', {
			url: '/home',
			templateUrl: '/views/home.html',
			controller: 'MainController'
		})
		.state('posts', {
			url: '/posts/{id}',
			templateUrl: '/views/posts.html',
			controller: 'PostsController'
		});

	$urlRouterProvider.otherwise('/home')

}]);
