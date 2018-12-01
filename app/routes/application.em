class ApplicationRoute extends Ember.Route

  beforeModel: ->
    @store.find('session', 1).then (session) =>
      @controllerFor('application').currentSession = session

  model: ->
    @store.findAll 'user'

  actions:
  	# TODO: implement this
  	runmagic: ->
  		alert("Not yet implemented")

`export default ApplicationRoute`
