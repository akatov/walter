`import DS from 'ember-data'`
WalterENV

if WalterENV.ENV == 'fixtures'
  class NodeAdapter extends DS.FixtureAdapter
else
  class NodeAdapter extends DS.ActiveModelAdapter
    host: WalterENV.backend
    buildURL: (r, s) ->
      "#{ @_super r, s }.json"

`export default NodeAdapter`
