class HomeRoute extends Ember.Route
  model: ->
    @store.find 'home', 1

`export default HomeRoute`
