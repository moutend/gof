# Singleton
#
# オブジェクトのインスタンスを1つに抑える。
# よく使う名前空間っぽいものは、Singletonの例です。
# http://www.joezimjs.com/javascript/javascript-design-patterns-singleton/

puts = console.log
_ =
  foo:
    bar: (num) ->
      puts "foobar#{num}"

_.foo.bar 2000
