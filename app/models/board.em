`import DS from 'ember-data'`
`import Model from 'walter/models/model'`

class Board extends Model

  title: DS.attr 'string'
  widgets: DS.hasMany 'widget', async: true, inverse: 'board'
  links: DS.hasMany 'link', async: true, inverse: 'board'

if WalterENV.ENV == 'fixtures'
  Board.reopenClass
    FIXTURES: [{
      id: 1
      title: 'board 1'
      widgets: [1, 2]
      links: [1]
    }, {
      id: 2
      title: 'board 2'
      widgets: []
    }]

`export default Board`
