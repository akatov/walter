`import DS from 'ember-data'`

class NodeAdapter extends DS.ActiveModelAdapter
  host: 'http://localhost:3000'
  buildURL: (r, s) ->
    "#{ @_super r, s }.json"

`export default NodeAdapter`
