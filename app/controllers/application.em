class ApplicationController extends Ember.Controller

  currentSession: null

  currentUser: ~>
    @currentSession.user

`export default ApplicationController`
