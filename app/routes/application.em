class ApplicationRoute extends Ember.Route

  beforeModel: ->
    @controllerFor('application').currentSession = @store.find 'session', 1

  model: ->
    @store.findAll 'user'

`export default ApplicationRoute`
