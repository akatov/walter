`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'controller:index', 'IndexController', {
  needs: ['model:board', 'controller:application']
}

test 'it exists', ->
  expect 1
  controller = @subject()
  ok controller
