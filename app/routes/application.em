class ApplicationRoute extends Ember.Route

  beforeModel: ->
    @store.find('session', 1).then (session) =>
      @controllerFor('application').currentSession = session

  model: ->
    @store.findAll 'user'

`export default ApplicationRoute`
