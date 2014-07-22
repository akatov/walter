`import { test, moduleForComponent } from 'ember-qunit'`

moduleForComponent 'w-link', 'WLinkComponent', {}

test 'it renders', ->
  expect 2

  component = @subject()
  equal component.state, 'preRender'

  @append()
  equal component.state, 'inDOM'
