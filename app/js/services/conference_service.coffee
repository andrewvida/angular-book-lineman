angular.module("app").service "ConferenceService", ($http) ->
    getSessions: ->
      $http.get "http://rest.codemash.org/api/sessions.json"

    getSpeakers: ->
      $http.get "http://rest.codemash.org/api/speakers.json"
