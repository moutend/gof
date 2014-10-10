# Façade
#
# 複雑な手順をまとめます。
# http://www.joezimjs.com/javascript/javascript-design-patterns-facade/

puts = console.log

class Foo
  getFoo: () ->
    puts 'foo'

class Bar
  getBar: () ->
    puts 'bar'

class Facade
  do: () ->
    f = new Foo()
    b = new Bar()
    f.getFoo()
    b.getBar()

f = new Facade()
f.do()
