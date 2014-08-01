`import DS from 'ember-data'`

class Link extends DS.Model

  board: DS.belongsTo 'board', async: true, inverse: 'links'

  source: DS.belongsTo 'widget', async: true, inverse: 'outgoing'

  target: DS.belongsTo 'widget', async: true, inverse: 'incoming'

  x1: ~> @source.x
  y1: ~> @source.y
  x2: ~> @target.x
  y2: ~> @target.y
  w1: ~> @source.oWidth
  h1: ~> @source.oHeight
  w2: ~> @target.oWidth
  h2: ~> @target.oHeight

if WalterENV.ENV == 'fixtures'
  Link.reopenClass
    FIXTURES: [{
      id: 1
      source: 1
      target: 2
    }]

`export default Link`
