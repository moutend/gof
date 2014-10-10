# Composite
#
# 親から子へと処理が伝搬させるパターン。
# ディレクトリを削除すると中身のファイルも削除される、というのはCompositeの例です。
# http://www.joezimjs.com/javascript/javascript-design-patterns-composite/

puts = console.log

class DirComposite
  constructor: (name) ->
    @children = []
    @name = name

  add: (child) ->
    @children.push child

  show: (t) ->
    tab = ""
    for i in [0 .. t]
      tab += " "
    for node in @children
      puts "#{tab}#{@name}"
      node.show(t+2)

class FileComposite
  constructor: (name) ->
    @name = name
    @children = []
  show: (t) ->
    tab = ""
    for i in [0 .. t]
      tab += " "
    puts "#{tab}#{@name}"

root = new DirComposite 'root'
home = new DirComposite 'home'
hoge = new FileComposite 'hoge.mp3'
foo  = new FileComposite 'foo.txt'
bar  = new FileComposite 'bar.jpg'
home.add hoge
home.add foo
home.add bar
root.add home
root.show 2
