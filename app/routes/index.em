class IndexRoute extends Ember.Route

  model: ->
    @store.find 'widget', 1

  position: 110

  actions:

    delete: (widget) ->
      widget.deleteRecord()

`export default IndexRoute`
