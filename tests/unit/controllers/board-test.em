`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'controller:board', 'BoardController', {
  needs: ['model:board']
}

test 'it exists', ->
  expect 1
  controller = @subject()
  ok controller
