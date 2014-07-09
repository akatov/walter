import Ember from 'ember';

export default Ember.Route.extend({
  model: function(){
    // return this.store.createRecord('board');
    return this.store.find('board', 1);
  },
  position: 110,
  actions: {
    delete: function(widget){
      widget.get('board').get('widgets').removeObject(widget);
      widget.deleteRecord();
    }
  }
});
