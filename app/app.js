import Ember from 'ember';
import Resolver from 'ember/resolver';
import loadInitializers from 'ember/load-initializers';

Ember.MODEL_FACTORY_INJECTIONS = true;
// Ember.MODEL_FACTORY_INJECTIONS = false;

var App = Ember.Application.extend({
  modulePrefix: 'walter', // TODO: loaded via config
  Resolver: Resolver
});

// App.ApplicationAdapter = DS.FixtureAdapter.create();

loadInitializers(App, 'walter');

export default App;
