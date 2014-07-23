`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'node', 'Node', {}

test 'it exists', ->
  expect 1
  model = @subject()
  ok model
