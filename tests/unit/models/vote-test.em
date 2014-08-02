`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'vote', 'Vote', {
  needs: ['model:widget', 'model:user']
}

test 'it exists', ->
  expect 1
  model = @subject()
  ok model
