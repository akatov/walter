`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'board', 'Board', {
  needs: ['model:widget', 'model:link']
}

test 'it exists', ->
  expect 1
  model = @subject()
  ok model
