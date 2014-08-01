`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'board', 'Board', {
  needs: ['model:widget', 'model:link']
}

test 'it works', ->
  expect 1
  model = @subject()
  ok model
