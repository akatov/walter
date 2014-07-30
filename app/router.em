class Router extends Ember.Router
  location: WalterENV.locationType

Router.map ->
  @route 'home'
  @resource 'board', path: '/board/:board_id'

`export default Router`
