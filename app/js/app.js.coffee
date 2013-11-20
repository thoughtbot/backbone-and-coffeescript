window.App =
  Views: {}
  Models: {}
  Collections: {}

  initialize: ->
    App.AllNotes = new App.Collections.Notes()
    App.AllNotes.fetch().done =>
      new App.Router()
      Backbone.history.start(pushState: true)

$ ->
  App.initialize();
