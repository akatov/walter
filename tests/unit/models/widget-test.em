`import Widget from 'walter/models/widget'`

module 'Widget'

test 'it works', ->
  WidgetObject = Ember.Object.extend Widget
  subject = WidgetObject.create()
  ok subject
