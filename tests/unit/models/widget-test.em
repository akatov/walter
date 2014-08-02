`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'widget', 'Widget', {
  needs: ['model:board', 'model:link', 'model:user', 'model:vote']
}

test 'it works', ->
  expect 1
  model = @subject()
  ok model
