`import DS from 'ember-data'`

class Link extends DS.Model

  source: DS.belongsTo 'widget'
  target: DS.belongsTo 'widget'

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
