class BoardRoute extends Ember.Route

  model: (params) ->
    @store.find 'node', params.board_id

  position: 110

  actions:

    delete: (node) ->
      node?.parent?.children?.removeObject node
      node.deleteRecord()

`export default BoardRoute`
