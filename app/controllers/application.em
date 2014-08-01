class ApplicationController extends Ember.ArrayController

  currentSession: null

  currentUser: ~>
    @currentSession.user

  loggedIn: ~>
    @currentSession != null

  actions:

    logout: ->
      @currentSession.destroyRecord().then =>
        @currentSession = null

    login: ->
      @store.createRecord('session', {
        token: 'garbage'
        user: @selectedUser
      }).save().then (session) =>
        @currentSession = session

`export default ApplicationController`
