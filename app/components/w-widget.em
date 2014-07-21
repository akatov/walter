class WWidgetComponent extends Ember.Component

  tagName: 'div'

  classNames: ['widget']

  attributeBindings: ['style']

  editable: false

  fetchDimentions: ->
    oH = @$().outerHeight()
    @param.set("oHeight",oH)
    oW = @$().outerWidth()
    @param.set("oWidth",oW) 

  focusOnTextarea:->
    @$("textarea").focus()

  +observer editable
  onEditableChange: ->
    Ember.run.later(@,"fetchDimentions",10)
    if @editable
      Ember.run.later(@,"focusOnTextarea",10)

  style: ~>
    "top:#{ @y }px; left:#{ @x }px;"

  didInsertElement: ->

    @fetchDimentions()

    onDragOrStop = (event,ui) => 
      o = ui.offset
      @x = o.left
      @y = o.top

    @$().draggable
      handle: '.widget-header'
      cancel: '.widget-header button'
      drag: onDragOrStop
      stop: onDragOrStop

    #TODO: find a better to capture when textarea is resized
    @$("textarea").on("mousemove",((that)->
      #TODO: understand why '@fetchDimentions' didn't do it
      ()->that.fetchDimentions()
      )(@))

  actions:
    delete: ->
      @sendAction 'action', @param
    save: ->
      @editable = false
    edit: ->
      @editable = true

`export default WWidgetComponent`
