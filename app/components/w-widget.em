class WWidgetComponent extends Ember.Component
  tagName: 'div'
  classNames: ['widget']
  attributeBindings: ['style', 'draggable']
  draggable: 'true'
  style: ~>
    "top:#{ @y }px; left:#{ @x }px;"

  dragEnd: (ev) ->
    e = ev.originalEvent
    x = e.clientX
    y = e.clientY
    @x = x
    # TODO: why do we need to translate y by 30?
    @y = y - 30

`export default WWidgetComponent`
