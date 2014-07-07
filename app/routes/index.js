import Ember from 'ember';

export default Ember.Route.extend({
  model: function(){ return {
    widgets: [{
      id: 1,
      contents: 'the first widget',
      position: { x: 100, y: 100, z: 0, s: 1 }
    }, {
      id: 2,
      contents: 'this is the second widget',
      position: { x: 100, y: 200, z: 0, s: 1 }
    }],
    links: [{
      id: 1,
      source: 1,
      target: 2
    }]
  }}
});
