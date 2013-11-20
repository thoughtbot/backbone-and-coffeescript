class App.Models.Note extends Backbone.Model
  validate: ->
    unless @hasTitle() || @hasContent()
      "Must provide a title or content"

  hasTitle: ->
    @has('title') && @get('title').trim() != ''

  hasContent: ->
    @has('content') && @get('content').trim() != ''
