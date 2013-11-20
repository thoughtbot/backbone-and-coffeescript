class App.Views.Notes extends Backbone.View
  template: JST['app/templates/notes.us']
  events:
    'click button': 'addNote'

  initialize: ->
    @listenTo(@collection, 'add', @renderNote)

  render: ->
    @$el.html(@template())
    @collection.forEach(@renderNote)
    this

  addNote: ->
    @collection.add({})

  renderNote: (note) =>
    view = new App.Views.Note(model: note)
    @$('ul').append(view.render().el)
