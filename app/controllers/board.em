class BoardController extends Ember.ObjectController

  needs: ['application']

  currentUser: ~> @controllers.application.currentUser

  loggedOut: ~> ! @controllers.application.loggedIn

  magicBar: ''

  position: 110

  actions:

    delete: (widget) ->
      @model.widgets.removeObject widget
      widget.destroyRecord()

    create: ->
      @currentUser?.then((user) =>
        @store.createRecord('widget', {
          board: @model
          owner: user
          contents: @magicBar
          position: { x: @position, y: @position }
        }).save()
      ).then((widget) =>
        @model.widgets.pushObject widget
        @position = @position + 10
        @magicBar = ''
      )

`export default BoardController`
