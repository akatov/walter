`import DS from 'ember-data'`

class Board extends DS.Model
  # widgets: DS.attr()
  # links: DS.attr() #DS.hasMany 'links'
  widgets: DS.hasMany 'widget', async: true
  links: DS.hasMany 'links', async: true

Board.reopenClass
  FIXTURES: [{
    id: 1
    widgets: [1, 2]
    links: [1]
  }]

`export default Board`
