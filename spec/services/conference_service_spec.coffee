describe "service: ConferenceService", ->

  Given -> module("app")

  Given -> inject ($http, @ConferenceService) =>
    @$httpGet  = spyOn($http, 'get')

  describe "#getSessions", ->
    When   -> @ConferenceService.getSessions()
    Then   -> expect(@$httpGet).toHaveBeenCalledWith('http://rest.codemash.org/api/sessions.json')
