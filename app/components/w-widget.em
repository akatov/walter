class WWidgetComponent extends Ember.Component
  editable: false
  tagName: 'div'
  classNames: ['widget']
  attributeBindings: ['style']
  style: ~>
    "top:#{ @y }px; left:#{ @x }px;"

  didInsertElement: ->

    @param.oHeight = @$().outerHeight()
    @param.oWidth = @$().outerWidth()

    onDragOrStop = (event,ui) => 
      o = ui.offset
      @x = o.left
      @y = o.top

    @$().draggable
      handle: '.widget-header'
      cancel: '.widget-header button'
      drag: onDragOrStop
      stop: onDragOrStop

  actions:
    delete: ->
      @sendAction 'action', @param
    save: ->
      @editable = false
    edit: ->
      @editable = true

`export default WWidgetComponent`
