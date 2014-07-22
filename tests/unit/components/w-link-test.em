`import { test, moduleForComponent } from 'ember-qunit'`

moduleForComponent 'w-link', 'WLinkComponent', {}

test 'it renders', ->
  expect 2

  component = @subject
    source:
      position:
        x: 100
        y: 100
    target:
      position:
        x: 200
        y: 200
  equal component.state, 'preRender'

  @append()
  equal component.state, 'inDOM'
