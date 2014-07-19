`import DS from 'ember-data'`

class Board extends DS.Model

Board.reopenClass
  FIXTURES: [{
    id: 1
    widgets: [1, 2]
    links: [1]
  }]

`export default Board`
