class App.Router extends Backbone.Router
  routes:
    '': 'index'
    'notes/:id': 'showNote'

  index: ->
    view = new App.Views.Notes(collection: App.AllNotes)
    $('body').html(view.render().el)

  showNote: (id) ->
    alert("You requested a note #{id}")
