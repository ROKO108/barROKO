module.exports = [
  {
    type: 'button'
    tooltip: 'New File'
    callback: 'application:new-file'
    icon: 'plus'
    iconset: 'ion'
  },    
  {
    type: 'button'
    tooltip: 'Open File'
    callback: 'application:open-file'
    icon: 'page-search'
    iconset: 'fi'
  },
  {
    type: 'button'
    tooltip: 'Save File'
    callback: 'core:save'
    icon: 'archive'
    iconset: 'ion'
  },
  {
    type: 'spacer'
  },
  {
    type: 'button'
    tooltip: 'Open Folder'
    callback: 'application:open-folder'
    icon: 'folder'
    iconset: 'ion'
  },
  {
    type: 'button'
    tooltip: 'Add project Folder'
    callback: 'application:add-project-folder'
    icon: 'filing'
    iconset: 'ion'
  },
  {
    type: 'spacer'
  },
  {
    type: 'button'
    tooltip: 'Split screen - Horizontally'
    callback: 'pane:split-right'
    icon: 'format-horizontal-align-center'
    iconset: 'mdi'
  },
  {
    type: 'button'
    tooltip: 'Split screen - Vertically'
    callback: 'pane:split-down'
    icon: 'format-vertical-align-center'
    iconset: 'mdi'
  },
  {
    type: 'spacer'
  },
  {
    type: 'button'
    tooltip: 'Toggle Fullscreen'
    callback: 'window:toggle-full-screen'
    icon: 'arrows-alt'
    iconset: 'fa'
  },
  {
    type: 'button'
    tooltip: 'Toggle Sidebar'
    callback: 'tree-view:toggle'
    icon: 'sitemap'
    iconset: 'fa'
  },
  {
    type: 'button'
    tooltip: 'Toggle Minimap'
    dependency: 'minimap'
    callback: 'minimap:toggle'
    icon: 'map'
    iconset: 'ion'
  },
  {
    type: 'spacer'
  },
  {
    type: 'button'
    tooltip: 'Auto indent (selection)'
    callback: 'editor:auto-indent'
    icon: 'indent'
    iconset: 'fa'
  },
  {
    type: 'button'
    tooltip: 'Fold row'
    callback: 'editor:fold-current-row'
    icon: 'level-up'
    iconset: 'fa'
  },
  {
    type: 'button'
    tooltip: 'Unfold row'
    callback: 'editor:unfold-current-row'
    icon: 'level-down'
    iconset: 'fa'
  },
  {
    type: 'spacer'
  },
  {
    type: 'button'
    tooltip: 'Add Bookmark'
    callback: 'bookmarks:toggle-bookmark'
    icon: 'bookmark'
    iconset: 'fi'
  },
  {
    type: 'spacer'
  },
  {
    type: 'button'
    tooltip: 'Reload Window'
    callback: 'window:reload'
    icon: 'refresh'
    iconset: 'ion'
  },
  {
    type: 'button'
    tooltip: 'Toggle Developer Tools'
    callback: 'window:toggle-dev-tools'
    icon: 'bug'
  },
  {
    type: 'button'
    tooltip: 'Open Settings View'
    callback: 'settings-view:open'
    icon: 'gear-a'
    iconset: 'ion'
  }
]
