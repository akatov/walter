`import DS from 'ember-data'`
ENV = window.WalterENV

class NodeAdapter extends DS.ActiveModelAdapter
  host: ENV.backend
  buildURL: (r, s) ->
    "#{ @_super r, s }.json"

`export default NodeAdapter`
