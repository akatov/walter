`import DS from 'ember-data'`

class Vote extends DS.Model

  widget: DS.belongsTo 'widget', async: true, inverse: 'votes'

  voter: DS.belongsTo 'user', async: true, inverse: 'votes'

  value: DS.attr()

if WalterENV.ENV == 'fixtures'
  Vote.reopenClass
    FIXTURES: [{
      id: 1
      widget: 1
      voter: 1
      value: 1
    }, {
      id: 2
      widget: 1
      voter: 2
      value: -1
    }]

`export default Vote`
