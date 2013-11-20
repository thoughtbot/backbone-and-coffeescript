window.App =
  Views: {}
  Models: {}
  Collections: {}

  initialize: ->
    new App.Router()
    Backbone.history.start(pushState: true)

$ ->
  App.initialize()
