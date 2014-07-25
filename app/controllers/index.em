class IndexController extends Ember.ObjectController

  magicBar: ''

  position: 110

  actions:

    create: ->
      board = @content
      @store.createRecord('node', {
        kind: 'widget'
        parent: board
        contents: @magicBar
        position: { x: @position, y: @position }
      }).save().then((widget) ->
        board.children.pushObject widget
      )
      @position = @position + 10
      @magicBar = ''

`export default IndexController`
