class WWidgetComponent extends Ember.Component
  tagName: 'div'
  classNames: ['widget']
  attributeBindings: ['style']
  style: ~>
    "top:#{ @y }px; left:#{ @x }px;"

  didInsertElement: ->
    @$().draggable
      handle: '.widget-header'
      cancel: '.widget-header button'
      stop: (event, ui) =>
        o = ui.offset
        @x = o.left
        @y = o.top

  actions:
    delete: ->
      @sendAction 'action', @param

`export default WWidgetComponent`
