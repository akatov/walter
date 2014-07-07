import Ember from 'ember';
import Widget from '../models/widget';

export default Ember.Route.extend({
  model: function(){
    return this.store.createRecord('widget', {
      id: 1,
      contents: 'the first widget',
      position: { x: 100, y: 100, z: 0, s: 1 }
    })
  }
});
