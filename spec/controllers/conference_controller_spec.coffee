describe "ConferenceController", ->
  Given ->
    module "app"
    inject ($controller, $rootScope, ConferenceService, @$httpBackend) ->
      @scope = $rootScope.$new()
      @conferenceService = jasmine.createSpyObj('conferenceService', ['getSessions'])

      @controller = $controller 'ConferenceController',
        $scope: @scope
        ConferenceService: @conferenceService
        sessions: @sessions

      @sessions =
        data:
          title: "my Title"


  xdescribe "getSessions", ->
    Then -> expect(@scope.sessions).toEqual @sessions
