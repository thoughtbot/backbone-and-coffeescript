class App.Views.Note extends Backbone.View
  template: JST['app/templates/note.us']
  tagName: 'li'
  className: 'note'

  events:
    'change :input': 'saveModel'
    'click button': 'destroy'

  initialize: ->
    @listenTo(@model, 'destroy', @remove)
    @listenTo(@model, 'invalid error', @markInvalid)
    @listenTo(@model, 'change', @setInputElements)

  markInvalid: =>
    @$el.addClass('invalid')

  markValid: =>
    @$el.removeClass('invalid')

  render: =>
    @$el.html(@template())
    @setInputElements()
    this

  setInputElements: ->
    @$('.title').val(@model.get('title'))
    @$('.content').val(@model.get('content'))

  saveModel: ->
    @model.set
      title: @$('.title').val()
      content: @$('.content').val()
    if @model.save()
      @markValid()

  destroy: ->
    @model.destroy()
