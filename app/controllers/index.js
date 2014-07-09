import Ember from 'ember';

export default Ember.ObjectController.extend({
  magicBar: '',
  position: 110,
  actions: {
    create: function(){
      var board = this.get('content')
      var widget = this.store.createRecord('widget', {
        board: board,
        contents: this.get('magicBar'),
        position: { x: this.get('position'), y: this.get('position') }
      }).save().then(function(widget){
        board.get('widgets').pushObject(widget)
      })
      this.set('position', this.get('position') + 10);
      this.set('magicBar', '')
    }
  }
});
