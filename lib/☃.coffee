☃View = require './☃-view'

module.exports =
  ☃View: null

  activate: (state) ->
    @☃View = new ☃View(state.☃ViewState)

  deactivate: ->
    @☃View.destroy()

  serialize: ->
    ☃ViewState: @☃View.serialize()
