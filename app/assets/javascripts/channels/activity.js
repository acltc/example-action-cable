App.activity = App.cable.subscriptions.create("ActivityChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    // Called when there's incoming data on the websocket for this channel
    var $scope = angular.element(document.getElementById('messagesCtrl')).scope(); // get the scope from the angular controller
    $scope.messages.push(data); // add the new message received from the websocket
    $scope.$apply(); // force angular to refresh
  }
});
