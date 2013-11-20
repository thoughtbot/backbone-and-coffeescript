class App.Views.Note extends Backbone.View
  template: JST['app/templates/note.us']
  tagName: 'form'
  className: 'note'

  events:
    'submit': 'saveModel'

  render: ->
    @$el.html(@template(note: @model))
    this

  saveModel: ->
    @model.set
      title: @$('.title').val()
      content: @$('.content').val()
    @model.save()
    Backbone.history.navigate('/', trigger: true)
    false
