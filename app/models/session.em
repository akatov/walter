`import DS from 'ember-data'`

class Session extends DS.Model

  token: DS.attr 'string'

  user: DS.belongsTo 'user', async: true

if WalterENV.ENV == 'fixtures'
  Session.reopenClass
    FIXTURES: [{
      id: 1
      token: 'abcdef'
      user: 1
    }]

`export default Session`
