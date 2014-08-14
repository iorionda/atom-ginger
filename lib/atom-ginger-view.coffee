{View} = require 'atom'

module.exports =
class AtomGingerView extends View
  @content: ->
    @div class: 'atom-ginger overlay from-top', =>
      @div "The AtomGinger package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "atom-ginger:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "AtomGingerView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
