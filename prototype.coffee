# Prototype
#
# 原型からインスタンスの複製を作る。
# JavaScriptのprototypeとは関係ない。
# http://www.dofactory.com/javascript/prototype-design-pattern

puts = console.log

class Foo
  constructor: (a) ->
    @a = a
  say: () ->
    puts "abc is #{@a} #{@b} #{@c}"
    null

class PrototypeFoo
  constructor: (proto) ->
    @proto = proto
  clone: () ->
    foo     = new Foo
    foo.a   = @proto.a
    foo.say = @proto.say
    foo

foo_proto = new Foo 'aaa'
prototype = new PrototypeFoo foo_proto
f1 = prototype.clone()
f2 = prototype.clone()
puts "f1 is #{JSON.stringify f1}"
puts "f2 is #{JSON.stringify f2}"
