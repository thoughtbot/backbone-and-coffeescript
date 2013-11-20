class App.Views.EditNote extends Backbone.View
  template: JST['app/templates/edit_note.us']

  tagName: 'form'

  className: 'edit-note'

  events:
    'submit': 'saveModel'

  render: ->
    @$el.html(@template(note: @model))
    this

  saveModel: (e) ->
    @model.set
      title: @$('.title').val()
      content: @$('.content').val()
    Backbone.history.navigate('/', trigger: true)
    false
