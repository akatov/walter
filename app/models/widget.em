`import DS from 'ember-data'`

class Widget extends DS.Model
  board: DS.belongsTo 'board'
  outgoing: DS.hasMany 'link', inverse: 'source'
  incoming: DS.hasMany 'link', inverse: 'target'
  contents: DS.attr 'string'
  position: DS.attr()

Widget.reopenClass
  FIXTURES: [{
    id: 1
    board: 1
    contents: 'the first widget'
    position: { x: 100, y: 100, z: 0, s: 1 }
  }, {
    id: 2
    board: 1
    contents: 'this is the second widget'
    position: { x: 100, y: 200, z: 0, s: 1 }
  }]

`export default Widget`
