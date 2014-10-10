# Flyweight
#
# インスタンスを使いまわして計算機資源を節約するパターン。
# http://www.dofactory.com/javascript/flyweight-design-pattern

puts = console.log

class Flyweight
  constructor: (maker, model, mem, cpu) ->
    @maker = maker
    @model = model

FlyweightFactory = do ->
  flyweight = {}
  obj =
    get: (maker, model, mem, cpu) ->
      if !flyweight[maker + model]?
        flyweight[maker + model] = new Flyweight maker, model
      return flyweight
    getCount: () ->
      count = 0
      for v of flyweight
        count += 1
      count
  return obj

class Computer
  constructor: (maker, model, mem, cpu) ->
    @flyweight = FlyweightFactory.get model
    @mem = mem
    @cpu = cpu

class ComputerCollection
  constructor: () ->
    @computers = []
    @count = 0
  add: (maker, model, mem, cpu) ->
    @computers[maker + model] = new Computer maker, model, mem, cpu
    @count += 1
  getCount: () ->
    @count

computers = new ComputerCollection
computers.add 'HP',   'A123', '4G',  'Core i3'
computers.add 'HP',   'A123', '8G',  'Core i5'
computers.add 'Dell', 'B456', '16G', 'Core i7'
computers.add 'Dell', 'B456', '8G',  'Core i7'
computers.add 'Dell', 'B456', '16G', 'Core i7'
computers.add 'IBM',  'C789', '2G',  'Core2Duo'
computers.add 'IBM',  'D123', '1G',  'ARM'

puts computers
puts "computers.getCount() -> #{computers.getCount()}"
puts "FlyWeight.getCount() -> #{FlyweightFactory.getCount()}"
