import { test, moduleForModel } from 'ember-qunit';

moduleForModel('board', 'Board', {
  needs: ['model:widget', 'model:link']
});

test('it exists', function() {
  var model = this.subject();
  // var store = this.store();
  ok(model);
});
