class App.Views.EditNote extends Backbone.View
  template: JST['app/templates/edit_note.us']

  tagName: 'form'

  className: 'edit-note'

  render: ->
    @$el.html(@template(note: @model))
    this
