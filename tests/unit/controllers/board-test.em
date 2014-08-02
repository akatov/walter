`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'controller:board', 'BoardController', {
  needs: ['model:board', 'controller:application']
}

test 'it exists', ->
  expect 1
  controller = @subject()
  ok controller
