`import DS from 'ember-data'`
WalterENV

if WalterENV.ENV == 'fixtures'

  class NodeAdapter extends DS.FixtureAdapter
    queryFixtures: (fixture, query, type) ->
      console.warn arguments
      fixture.filter (item) ->
        ret = true
        for k, v of query
          if item[k] != v
            ret = false
            break
        ret

else

  class NodeAdapter extends DS.ActiveModelAdapter
    host: WalterENV.backend
    buildURL: (r, s) ->
      "#{ @_super r, s }.json"

`export default NodeAdapter`
