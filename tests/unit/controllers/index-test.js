import { test, moduleFor } from 'ember-qunit';

moduleFor('controller:index', 'IndexController', {
  // Specify the other units that are required for this test.
  needs: ['model:widget']
});

// Replace this with your real tests.
test('it exists', function() {
  var controller = this.subject();
  ok(controller);
});
