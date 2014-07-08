`import DS from 'ember-data'`

class Widget extends DS.Model
  contents: DS.attr 'string'
  position: DS.attr()
  html: ~>
    Ember.String.htmlSafe "<span style=\"position:fixed;left:#{ @position.x }px; top:#{ @position.y }px\">#{@contents}</span>"

Widget.reopenClass
  FIXTURES: [{
    id: 1
    contents: 'the first widget'
    position: { x: 100, y: 100, z: 0, s: 1 }
  }, {
    id: 2
    contents: 'this is the second widget'
    position: { x: 100, y: 200, z: 0, s: 1 }
  }]


`export default Widget`
