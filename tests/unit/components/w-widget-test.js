import { test, moduleForComponent } from 'ember-qunit';

moduleForComponent('w-widget', 'WWidgetComponent', {
});

test('it renders', function() {
  expect(2);

  var component = this.subject({
    x: 100,
    y: 100,
    contents: 'ohai'
  });
  equal(component.state, 'preRender');

  // appends the component to the page
  this.append();
  equal(component.state, 'inDOM');
});
