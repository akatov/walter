`import { test, moduleForComponent } from 'ember-qunit'`

moduleForComponent 'w-widget', 'WWidgetComponent', {
  needs: ['helper:markdown-to-html']
}

test 'it renders', ->
  expect 2
  component = @subject
    param:
      type: 'widget'
      children: []
      position:
        x: 100
        y: 100
      contents: 'ohai'
  equal component.state, 'preRender'
  @append()
  equal component.state, 'inDOM'
