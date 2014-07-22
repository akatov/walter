class IndexRoute extends Ember.Route

  model: ->
    @store.find 'board', 1

  position: 110

  actions:

    delete: (widget) ->
      widget.board.widgets.removeObject widget
      widget.deleteRecord()

`export default IndexRoute`
