# Command
#
# メソッドに渡す引数が増えると混乱するので、
# 引数をオブジェクトにするパターン。
# http://www.dofactory.com/javascript/command-design-pattern

puts = console.log

add = (x, y) -> x + y
sub = (x, y) -> x - y

calculator = (obj) ->
  switch obj.command
    when 'add'
      return add obj.x, obj.y
    when 'sub'
      return add obj.x, obj.y

commandObj =
  command: 'add'
  x: 1
  y: 2

puts calculator commandObj
