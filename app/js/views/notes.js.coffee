class App.Views.Notes extends Backbone.View
  template: JST['app/templates/notes.us']
  events:
    'click a': 'showNote'

  render: ->
    @$el.html(@template(notes: @collection))
    this

  showNote: (e) ->
    anchor = $(e.currentTarget)
    Backbone.history.navigate(anchor.attr('href'), trigger: true)
    false
