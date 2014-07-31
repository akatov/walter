class BoardRoute extends Ember.Route

  position: 110

  actions:

    delete: (node) ->
      node?.parent?.children?.removeObject node
      node.deleteRecord()

`export default BoardRoute`
