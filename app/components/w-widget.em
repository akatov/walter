class WWidgetComponent extends Ember.Component
  editable: false
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
    save: ->
      @editable = false
    edit: ->
      @editable = true

`export default WWidgetComponent`
