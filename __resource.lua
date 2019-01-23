resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

name 'NativeUILua-Reloaded'
description 'NativeUILua-Reloaded is UI library for FiveM designed specifically for making interface based on GTA:Online style.'
version '1.0.0'

client_scripts {
  "share/UIVisual.lua",
  "share/Utils.lua",

  "elements/UIResRectangle.lua",
  "elements/UIResText.lua",
  "elements/Sprite.lua",
  "elements/StringMeasurer.lua",
  "elements/Badge.lua",
  "elements/Colours.lua",
  "elements/ColoursPanel.lua",

  "items/UIMenuItem.lua",
  "items/UIMenuCheckboxItem.lua",
  "items/UIMenuListItem.lua",
  "items/UIMenuSliderItem.lua",
  "items/UIMenuSliderHeritageItem.lua",
  "items/UIMenuColouredItem.lua",
  "items/UIMenuprogressItem.lua",

  "windows/UIMenuHeritageWindow.lua",

  "panels/UIMenuGridPanel.lua",
  "panels/UIMenuColourPanel.lua",
  "panels/UIMenuPercentagePanel.lua",

  "base/UIMenu.lua",
  "base/MenuPool.lua",

  "NativeUI.lua",

  --"example/DefaultShowcase.lua",
  "example/RealtimeUpdate.lua",

}
