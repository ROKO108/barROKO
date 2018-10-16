path = require 'path'
utils = require './utils'
pkg = require '../package.json'

tooltool-bar-menu = {}

tooltool-bar-menu.config =
  custom:
    title: 'Custom entries file'
    description: 'A cson or json file path containing extra entries. Path should be relative to the Atom\'s configuration directory (.atom). For details read tool-bar-menu\'s README.md file'
    type: 'string'
    default: ''
  override:
    title: 'Override default entries'
    description: 'If checked, default `entries.coffee` buttons are replaced with the settings above, otherwise the default settings is extended with the file above.'
    type: 'boolean'
    default: false


tooltool-bar-menu.deactivate = ->
  @toolBar?.removeItems()

tooltool-bar-menu.consumeToolBar = (toolBar) ->
  @toolBar = toolBar 'tool-bar-menu'
  utils.populate(@toolBar)

  atom.config.observe pkg.name + '.override', (newVal) ->
    utils.populate(tooltool-bar-menu.toolBar)

  atom.config.observe pkg.name + '.custom', (newVal) ->
    utils.populate(tooltool-bar-menu.toolBar)

module.exports = tooltool-bar-menu
