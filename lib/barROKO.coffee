path = require 'path'
utils = require './utils'
pkg = require '../package.json'

toolBarROKO = {}

toolBarROKO.config =
  custom:
    title: 'Custom entries file'
    description: 'A cson or json file path containing extra entries. Path should be relative to the Atom\'s configuration directory (.atom). For details read barROKO\'s README.md file'
    type: 'string'
    default: ''
  override:
    title: 'Override default entries'
    description: 'If checked, default `entries.coffee` buttons are replaced with the settings above, otherwise the default settings is extended with the file above.'
    type: 'boolean'
    default: false


toolBarROKO.deactivate = ->
  @toolBar?.removeItems()

toolBarROKO.consumeToolBar = (toolBar) ->
  @toolBar = toolBar 'barROKO'
  utils.populate(@toolBar)

  atom.config.observe pkg.name + '.override', (newVal) ->
    utils.populate(toolBarROKO.toolBar)

  atom.config.observe pkg.name + '.custom', (newVal) ->
    utils.populate(toolBarROKO.toolBar)

module.exports = toolBarROKO
