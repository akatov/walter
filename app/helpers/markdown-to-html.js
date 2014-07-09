import Ember from 'ember';

export default Ember.Handlebars.makeBoundHelper(function(value) {
  return Ember.String.htmlSafe(markdown.toHTML(value));
});
