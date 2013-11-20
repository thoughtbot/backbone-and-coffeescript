class App.Views.Notes extends Backbone.View
  template: JST['app/templates/notes.us']

  render: ->
    @$el.html(@template())
    this
