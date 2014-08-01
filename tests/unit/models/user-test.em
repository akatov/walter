`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'user', 'User', {
  needs: ['model:widget', 'model:vote']
}

test 'it exists', ->
  expect 1
  model = @subject()
  ok model
