{View} = require 'atom'

module.exports =
class ☃View extends View
  @content: ->
    @div class: '☃ overlay from-top', =>
      @div "☃☃☃☃☃☃☃☃☃☃☃☃☃☃", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "☃:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "☃View was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
