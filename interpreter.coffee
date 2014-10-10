# Interpreter
#
# インタプリタ
# http://www.dofactory.com/javascript/design-patterns#

puts = console.log

interpreter = (str) ->
  position =
    x: 0
    y: 0

  for i in str.split ''
    switch i
      when 'L'
       position.x -= 1
      when 'R'
       position.x += 1
      when 'U'
       position.y += 1
      when 'D'
       position.y -= 1
  position

puts interpreter 'RRRDDDLU'

