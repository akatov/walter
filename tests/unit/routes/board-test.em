`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'route:board', 'BoardRoute', {}

test 'it exists', ->
  expect 1
  route = @subject()
  ok route
