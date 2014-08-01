`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'route:application', 'ApplicationRoute', {}

test 'it exists', ->
  expect 1
  route = @subject()
  ok route
