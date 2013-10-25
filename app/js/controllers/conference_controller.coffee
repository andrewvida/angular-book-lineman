angular.module("app").controller "ConferenceController", ($scope, ConferenceService, sessions) ->
  $scope.sessions = sessions.data
