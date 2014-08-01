class IndexController extends Ember.ArrayController

  needs: ['application']

  loggedIn: ~>
    @controllers.application.loggedIn

  newBoardName: null

  actions:

    create: ->
      @store.createRecord('board', {
        title: @newBoardName
      }).save().then (board) =>
        @transitionToRoute 'board', board

`export default IndexController`
