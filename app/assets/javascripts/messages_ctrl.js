/* global angular */

(function() {
  angular.module('app').controller('messagesCtrl', function($scope, $http) {
    $scope.setup = function() {
      $http.get('/api/v1/messages').then(function(response) {
        $scope.messages = response.data;
      });
    };
  });
})();
