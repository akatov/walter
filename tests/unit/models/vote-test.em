`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'vote', 'Vote', {
  needs: []
}

test 'it exists', ->
  expect 1
  model = @subject()
  ok model
