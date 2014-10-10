# State
#
# 状態遷移を管理する。
# http://www.dofactory.com/javascript/state-design-pattern

puts = console.log

class TraficLight
  constructor: () ->
    @count = 0
    @currentState = new Red this
  change: (state) ->
    if @count < 5
      @count += 1
      @currentState = state
      @currentState.go()
  start: () ->
    @currentState.go()

class Red
  constructor: (light) ->
    @light = light
  go: () ->
    puts "RED:   wait 1 min"
    light.change new Green light

class Green
  constructor: (light) ->
    @light = light
  go: () ->
    puts "GREEN: till 1 min"
    light.change new Red light

light = new TraficLight
light.start()

