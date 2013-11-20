class App.Router extends Backbone.Router
  routes:
    '': -> alert("You requested the index page")
    'notes/:id': 'showNote'

  showNote: (id) ->
    alert("You requested a note #{id}")
