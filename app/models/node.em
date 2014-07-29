`import DS from 'ember-data'`
`import Widget from 'walter/models/widget'`
`import Board from 'walter/models/board'`

class Node extends DS.Model

  kind: DS.attr 'string'
  parent: DS.belongsTo 'node', inverse: 'children'
  children: DS.hasMany 'node', async: true, inverse: 'parent'
  contents: DS.attr 'string'

  setupData: (data, partial) ->
    type = data.kind.classify()
    if type == 'Board'
      @reopen Board
    else if type == 'Widget'
      @reopen Widget
    @_super data, partial

if WalterENV.ENV == 'fixtures'
  Node.reopenClass
    FIXTURES: [{
      id: 1
      kind: 'board'
      parent: null
      children: [2]
      contents: 'my board'
    }, {
      id: 2
      kind: 'widget'
      parent: 1
      children: [3]
      contents: 'widget id 2'
      position: { x: 100, y: 100, z: 0, s: 1 }
    }, {
      id: 3
      kind: 'widget'
      parent: 2
      children: []
      contents: 'widget id 3'
      position: { x: 100, y: 200, z: 0, s: 1 }
    }]

`export default Node`
