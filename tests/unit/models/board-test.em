`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'model:board', 'Board', {}

test 'it works', ->
  expect 1
  model = @subject()
  ok model
