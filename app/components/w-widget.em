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
    # TODO: why do we need to translate y
    @y = y - 52

  actions:
    delete: ->
      @sendAction 'action', @param

`export default WWidgetComponent`
