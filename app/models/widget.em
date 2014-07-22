`import DS from 'ember-data'`

class Widget extends DS.Model
  type: DS.attr 'string'
  parent: DS.belongsTo 'widget', inverse: 'children'
  children: DS.hasMany 'widget', async: true, inverse: 'parent'
  contents: DS.attr 'string'
  position: DS.attr()

Widget.reopenClass
  FIXTURES: [{
    id: 1
    type: 'board'
    parent: null
    children: [2, 3]
    contents: 'my board'
    position: null
  }, {
    id: 2
    type: 'widget'
    parent: 1
    children: [3]
    contents: 'the first widget'
    position: { x: 100, y: 100, z: 0, s: 1 }
  }, {
    id: 3
    type: 'widget'
    parent: 2
    children: []
    contents: 'this is the second widget'
    position: { x: 100, y: 200, z: 0, s: 1 }
  }]

`export default Widget`
