app.controller('PostsCtrl', [
'$scope',
'posts',
'post',
function($scope, posts, post) {
	$scope.post = post;

	$scope.addComment = function() {
		if(!$scope.body || $scope.body === '') {return;}

		posts.addComment(post, {
			body: $scope.body,
			author: 'user'
		}).success(function(comment){
			$scope.post.comments.push(comment);
		});
		$scope.body = '';
	}

	$scope.incrementUpvotes = function(comment) {
		posts.upvoteComment(post, comment);
	}
}]);