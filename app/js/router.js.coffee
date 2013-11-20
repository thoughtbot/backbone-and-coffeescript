class App.Router extends Backbone.Router
  routes:
    '': 'index'

  index: ->
    view = new App.Views.Notes(collection: App.AllNotes)
    $('body').html(view.render().el)
