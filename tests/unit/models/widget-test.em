`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'widget', 'Widget', {}

test 'it exists', ->
  expect 1
  model = @subject()
  ok model
