`import Board from 'walter/models/board'`

module 'Board'

test 'it works', ->
  BoardObject = Ember.Object.extend Board
  subject = BoardObject.create()
  ok subject
