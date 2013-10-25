angular.module("app").config ($routeProvider, $locationProvider) ->
  $locationProvider.html5Mode true

  $routeProvider.when "/sessions",
    templateUrl: "sessions.html"
    controller: "ConferenceController"
    resolve:
      sessions: (ConferenceService) ->
        ConferenceService.getSessions()

  $routeProvider.otherwise redirectTo: "/sessions"
