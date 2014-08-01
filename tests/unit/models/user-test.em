`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'user', 'User', {}

test 'it exists', ->
  expect 1
  model = @subject()
  ok model
