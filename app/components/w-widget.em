class WWidgetComponent extends Ember.Component
  editable: false
  tagName: 'div'
  classNames: ['widget']
  attributeBindings: ['style']

  fetchDimentions: ->
    oH = @$().outerHeight()
    @param.set("oHeight",oH)
    oW = @$().outerWidth()
    @param.set("oWidth",oW) 
 
  updateDimentions:(-> 
    #TODO: understand why timeout is necessary 
    #TODO: try using "Ember.run.once" instead 
    setTimeout(((that)->
      #TODO: understand why '@fetchDimentions' didn't do it
      ()->that.fetchDimentions()
      )(@),10)
    ).observes('editable')

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

  actions:
    delete: ->
      @sendAction 'action', @param
    save: ->
      @editable = false
    edit: ->
      @editable = true

`export default WWidgetComponent`
