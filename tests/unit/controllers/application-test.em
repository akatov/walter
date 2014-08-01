`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'controller:application', 'ApplicationController', {}

test 'it exists', ->
  controller = @subject()
  ok controller
