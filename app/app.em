`import Resolver from 'ember/resolver'`
`import loadInitializers from 'ember/load-initializers'`
`import DS from 'ember-data'`

DS.Model.reopen
  logger: Ember.Logger

Ember.ObjectController.reopen
  needs: ['application']
  currentUser: ~> @controllers.application.currentUser
  loggedOut: ~> ! @controllers.application.loggedIn

Ember.ArrayController.reopen
  needs: ['application']
  currentUser: ~> @controllers.application.currentUser
  loggedOut: ~> ! @controllers.application.loggedIn

Ember.MODEL_FACTORY_INJECTIONS = true

class App extends Ember.Application
  modulePrefix: 'walter' # TODO: loaded via config
  Resolver: Resolver

loadInitializers App, 'walter'

`export default App`
