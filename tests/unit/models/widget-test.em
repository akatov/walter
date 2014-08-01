`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'widget', 'Widget', {
  needs: ['model:board', 'model:link']
}

test 'it works', ->
  expect 1
  model = @subject()
  ok model
