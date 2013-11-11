angular.module("app").config ($routeProvider, $locationProvider) ->
  $locationProvider.html5Mode true

  $routeProvider.when "/sessions",
    templateUrl: "sessions.html"
    controller: "ConferenceController"
    resolve:
      sessions: (ConferenceService) ->
        ConferenceService.getSessions()
      speakers: -> {}

  $routeProvider.when "/speakers",
    templateUrl: "speakers.html"
    controller: "ConferenceController"
    resolve:
      speakers: (ConferenceService) ->
        ConferenceService.getSpeakers()
      sessions: -> {}

  # $routeProvider.otherwise redirectTo: "/sessions"
