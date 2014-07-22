`import { test, moduleForComponent } from 'ember-qunit'`

moduleForComponent 'w-widget', 'WWidgetComponent', {}

test 'it renders', ->
  expect 2
  component = @subject
    x: 100
    y: 100
    contents: 'ohai'
  equal component.state, 'preRender'
  @append()
  equal component.state, 'inDOM'
