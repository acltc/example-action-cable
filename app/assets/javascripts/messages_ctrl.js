/* global angular */

(function() {
  angular.module('app').controller('messagesCtrl', function($scope, $http) {
    $scope.setup = function() {
      $http.get('/api/v1/messages').then(function(response) {
        $scope.messages = response.data;
      });
    };

    $scope.createNewMessage = function(body) {
      var params = {
        body: body
      };
      $http.post('/api/v1/messages', params).then(function(response) {
        $scope.messages.push(response.data);
        $scope.newMessageBody = '';
      });
    };
  });
})();
