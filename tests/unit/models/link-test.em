`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'link', 'Link', {
  needs: ['model:board', 'model:widget']
}

test 'it exists', ->
  expect 1
  model = @subject()
  ok model
