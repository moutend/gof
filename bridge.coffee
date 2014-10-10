# Bridge
#
# 処理と実装を分離するパターン。
# http://www.dofactory.com/javascript/bridge-design-pattern

puts = console.log

class Mouse
  constructor: (output) ->
    @output = output
  click: () ->
    @output.click()
  zoom: () ->
    @output.zoom()

class Audio
  click: () ->
    puts 'playing click sound'
  zoom: () ->
    puts 'playing zoom sound'

audio = new Audio
mouse = new Mouse audio

mouse.click()
mouse.zoom()
