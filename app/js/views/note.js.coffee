class App.Views.Note extends Backbone.View
  template: JST['app/templates/note.us']
  tagName: 'li'
  className: 'note'

  events:
    'change :input': 'saveModel'
    'click button': 'destroy'

  initialize: ->
    @listenTo(@model, 'destroy', @remove)

  render: ->
    @$el.html(@template(note: @model))
    this

  saveModel: ->
    @model.set
      title: @$('.title').val()
      content: @$('.content').val()
    @model.save()

  destroy: ->
    @model.destroy()
