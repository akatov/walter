import { test, moduleForModel } from 'ember-qunit';

moduleForModel('link', 'Link', {
  needs: ['model:board', 'model:widget']
});

test('it exists', function() {
  var model = this.subject();
  // var store = this.store();
  ok(model);
});
