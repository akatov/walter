import Ember from 'ember';

export default Ember.Route.extend({
  model: function(){
    return this.store.findAll('widget');
  },
  position: 110,
  actions: {
    delete: function(widget){
      widget.deleteRecord();
    },
    create: function(text){
      this.store.createRecord('widget', {
        contents: text,
        position: { x: this.position, y: this.position }
      })
      this.position += 10;
    }
  }
});
