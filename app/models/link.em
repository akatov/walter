`import DS from 'ember-data'`

class Link extends DS.Model
  board: DS.belongsTo 'board'
  source: DS.belongsTo 'widget'
  target: DS.belongsTo 'widget'

Link.reopenClass
  FIXTURES: [{
    id: 1
    board: 1
    source: 1
    target: 2
  }]

`export default Link`
