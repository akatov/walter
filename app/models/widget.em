`import DS from 'ember-data'`

mixin Widget

  position: DS.attr()

  # this is not used in fixtures as they are not loaded
  didLoad: ->
    console.warn 'didLoad', arguments
    Widget.position = Widget.position + 10
    @position = {
      x: 10 + Widget.position
      y: 5 * Widget.position
    }

Widget.position = 0

`export default Widget`
