`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'session', 'Session', {
  needs: ['model:user', 'model:widget']
}

test 'it exists', ->
  model = @subject()
  ok model
