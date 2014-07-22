`import Resolver from 'ember/resolver'`
`import loadInitializers from 'ember/load-initializers'`

Ember.MODEL_FACTORY_INJECTIONS = true

class App extends Ember.Application
  modulePrefix: 'walter' # TODO: loaded via config
  Resolver: Resolver

loadInitializers App, 'walter'

`export default App`
