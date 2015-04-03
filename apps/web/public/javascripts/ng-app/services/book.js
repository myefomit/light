angular.module('lotusBooks')
  .factory('Books', ['$resource', function ($resource) {
    return $resource('/api/books/:id', {id: '@id', format: 'json'})
  }]);