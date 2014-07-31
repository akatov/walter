`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'model:widget', 'Widget', {}

test 'it works', ->
  expect 1
  model = @subject()
  ok model
