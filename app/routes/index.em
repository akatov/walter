class IndexRoute extends Ember.Route

  model: ->
    @store.findAll 'board'

  position: 110

  actions:

    delete: (node) ->
      # node?.parent?.children?.removeObject node
      node.deleteRecord()

`export default IndexRoute`
