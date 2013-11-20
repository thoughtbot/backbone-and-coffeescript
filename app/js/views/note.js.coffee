class App.Views.Note extends Backbone.View
  template: JST['app/templates/note.us']

  tagName: 'li'
  className: 'note'

  events:
    'change :input': 'saveModel'
    'click .remove-note': 'destroy'

  render: =>
    @$el.html(@template(note: @model))
    this

  saveModel: (e) ->
    @model.set
      title: @$('.title').val()
      content: @$('.content').val()
    @model.save()

  destroy: ->
    @model.destroy()
    @remove()
