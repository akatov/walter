class BoardController extends Ember.ObjectController

  magicBar: ''

  position: 110

  actions:

    create: ->
      @store.createRecord('widget', {
        board: @model
        contents: @magicBar
        position: { x: @position, y: @position }
      }).save().then((widget) =>
        @model.widgets.pushObject widget
      )
      @position = @position + 10
      @magicBar = ''

`export default BoardController`
