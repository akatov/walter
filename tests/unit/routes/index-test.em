`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'route:index', 'IndexRoute', {}

test 'it exists', ->
  expect 1
  route = @subject()
  ok route
