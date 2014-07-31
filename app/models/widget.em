`import DS from 'ember-data'`
`import Model from 'walter/models/model'`

class Widget extends DS.Model

  board: DS.belongsTo 'board', async: true, inverse: 'widgets'
  outgoing: DS.attr 'link', async: true, inverse: 'source'
  incoming: DS.attr 'link', async: true, inverse: 'target'
  contents: DS.attr 'string'
  position: DS.attr()

  x: ~> @position.x
  y: ~> @position.y

if WalterENV.ENV == 'fixtures'
  Widget.reopenClass
    FIXTURES: [{
      id: 1
      board: 1
      contents: 'widget id 2'
      position: { x: 100, y: 100, z: 0, s: 1 }
    }, {
      id: 2
      board: 1
      contents: 'widget id 3'
      position: { x: 100, y: 200, z: 0, s: 1 }
    }]

`export default Widget`
