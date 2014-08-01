`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'session', 'Session', {
  needs: ['model:user']
}

test 'it exists', ->
  model = @subject()
  ok model
