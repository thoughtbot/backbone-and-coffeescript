class App.Views.Notes extends Backbone.View
  template: JST['app/templates/notes.us']

  events:
    'click a': 'showNote'

  render: =>
    @$el.html(@template(notes: @collection))
    this

  showNote: (e) =>
    $this = $(e.currentTarget)
    Backbone.history.navigate($this.attr('href'), trigger: true)
    false
