AtomGingerView = require './atom-ginger-view'

module.exports =
  atomGingerView: null

  activate: (state) ->
    @atomGingerView = new AtomGingerView(state.atomGingerViewState)

  deactivate: ->
    @atomGingerView.destroy()

  serialize: ->
    atomGingerViewState: @atomGingerView.serialize()
