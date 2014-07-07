import DS from 'ember-data';

var Widget = DS.Model.extend({
  contents: DS.attr('string'),
  position: DS.attr(),
  html: function(){
    return Ember.String.htmlSafe('<span style="left:' + this.get('position.x') + ';">' + this.get('contents') + '</span>')
  }.property('contents', 'position')
});

Widget.reopenClass({
  FIXTURES: [{
    id: 1,
    contents: 'the first widget',
    position: { x: 100, y: 100, z: 0, s: 1 }
  }, {
    id: 2,
    contents: 'this is the second widget',
    position: { x: 100, y: 200, z: 0, s: 1 }
  }]
});

// Photo.adapter = Ember.FixtureAdapter.create();

export default Widget;
