window.App =
  Views: {}
  Models: {}
  Collections: {}

  initialize: ->
    App.AllNotes = new App.Collections.Notes([{id: 1, title: 'First note', content: 'Note body'}])
    new App.Router()
    Backbone.history.start(pushState: true)

$ ->
  App.initialize();
