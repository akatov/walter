import Ember from 'ember';

var Router = Ember.Router.extend({
  location: WalterENV.locationType
});

Router.map(function() {
	this.route("home");
});

export default Router;
