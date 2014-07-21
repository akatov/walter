import { test, moduleForModel } from 'ember-qunit';

moduleForModel('widget', 'Widget', {
  needs: ['model:board', 'model:link']
});

test('it exists', function() {
  var model = this.subject();
  // var store = this.store();
  ok(model);
});
