# http://www.adobe.com/jp/devnet/html5/articles/javascript-design-patterns-pt2-adapter-decorator-factory.html#
# Adapter
#
# 無闇に使うのは危険。
# 上書きされる前の振舞いを期待したコードが動作しなくなる。

puts = console.log
ConsoleAdapter = (msg) ->
  puts "info: #{msg}"

console.info = ConsoleAdapter
console.info 'foo'
