`import DS from 'ember-data'`

class Widget extends DS.Model

  # widget for now is also a question

  board: DS.belongsTo 'board', async: true, inverse: 'widgets'

  owner: DS.belongsTo 'user', async: true, inverse: 'questions'

  votes: DS.hasMany 'vote', async: true, inverse: 'question'

  outgoing: DS.hasMany 'link', async: true, inverse: 'source'

  incoming: DS.hasMany 'link', async: true, inverse: 'target'

  contents: DS.attr 'string'

  position: DS.attr()

  x: ~> @position.x

  y: ~> @position.y

  yesVotes: ~>
    @votes.filter (vote) ->
      vote.value == 1

  noVotes: ~>
    @votes.filter (vote) ->
      vote.value == -1

  yesVoters: ~>
    @yesVotes.map (vote) ->
      vote.voter

  noVoters: ~>
    @noVotes.map (vote) ->
      vote.voter

if WalterENV.ENV == 'fixtures'
  Widget.reopenClass
    FIXTURES: [{
      id: 1
      board: 1
      owner: 1
      votes: [1, 2]
      contents: 'I think this board is awesome.'
      position: { x: 100, y: 100, z: 0, s: 1 }
    }, {
      id: 2
      board: 1
      owner: 2
      votes: []
      contents: 'I think Ember.JS is cool.'
      position: { x: 100, y: 200, z: 0, s: 1 }
    }]

`export default Widget`
