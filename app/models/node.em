`import DS from 'ember-data'`

class Node extends DS.Model
  kind: DS.attr 'string'
  parent: DS.belongsTo 'node', inverse: 'children'
  children: DS.hasMany 'node', async: true, inverse: 'parent'
  contents: DS.attr 'string'
  position: DS.attr()

  didLoad: ->
    Node.position = Node.position + 10
    @position = {
      x: 10 + Node.position
      y: 5 * Node.position
    }

Node.position = 0

if WalterENV.ENV == 'fixtures'
  Node.reopenClass
    FIXTURES: [{
      id: 1
      kind: 'board'
      parent: null
      children: [2, 3]
      contents: 'my board'
      position: null
    }, {
      id: 2
      kind: 'widget'
      parent: 1
      children: [3]
      contents: 'the first widget'
      position: { x: 100, y: 100, z: 0, s: 1 }
    }, {
      id: 3
      kind: 'widget'
      parent: 2
      children: []
      contents: 'this is the second widget'
      position: { x: 100, y: 200, z: 0, s: 1 }
    }]

`export default Node`
