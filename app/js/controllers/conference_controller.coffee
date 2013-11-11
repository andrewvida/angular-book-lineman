angular.module("app").controller "ConferenceController", ($scope, ConferenceService, sessions, speakers) ->
  $scope.sessions = sessions.data
  $scope.speakers = speakers.data

  $scope.hasTimeslot = (session) ->
    session.Start?

