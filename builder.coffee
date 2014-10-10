# Builder
#
# Builderはオブジェクトを作成するためのオブジェクトを受け取る。
# オブジェクト作成の手順が統一できる。
# http://www.dofactory.com/javascript/builder-design-pattern

puts = console.log

class Build
  constructor: (builder) ->
    builder.step1()
    builder.step2()
    return builder.get()

class CarBuilder
  constructor: () ->
    @car = null

  step1: () ->
    @car = new Car()

  step2: () ->
    @car.addParts()

  get: () ->
    @car

class Car
  constructor: () ->
    @door = 0
  addParts: () ->
    @door = 4

class Truck
  constructor: () ->
    @tire = 0
    @door = 0
  addParts: () ->
    @tire = 6
    @door = 2

class TruckBuilder
  constructor: () ->
    @car = null

  step1: () ->
    @car = new Truck()

  step2: () ->
    @car.addParts()

  get: () ->
    @car


car = Build new CarBuilder()
truck = Build new TruckBuilder()
puts car
puts truck
