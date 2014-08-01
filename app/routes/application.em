class ApplicationRoute extends Ember.Route

  beforeModel: ->
    dmitri = @store.find 'user', 2
    @controllerFor('application').currentUser = dmitri

  model: ->
    @store.findAll 'user'

`export default ApplicationRoute`
