import Ember from 'ember';

export default Ember.ArrayController.extend({
  magicBar: '',
  position: 110,
  actions: {
    create: function(){
      this.store.createRecord('widget', {
        contents: this.get('magicBar'),
        position: { x: this.get('position'), y: this.get('position') }
      })
      this.set('position', this.get('position') + 10);
      this.set('magicBar', '')
    }
  }
});
