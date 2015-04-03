angular.module('lotusBooks')
  .controller('bookController', ['$scope', 'Books', function ($scope, Books) {

    $scope.books = Books.query();

  }]);