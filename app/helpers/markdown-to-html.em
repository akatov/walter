MarkdownToHtmlHelper = Ember.Handlebars.makeBoundHelper (value) ->
  Ember.String.htmlSafe markdown.toHTML(value)

`export default MarkdownToHtmlHelper`
