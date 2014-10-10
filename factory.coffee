puts = (msg) -> console.log msg

class Car
  constructor: () ->
    null
  drive: () ->
    puts 'driving'
    null
  getPrice: () ->
    100

class CarDecorator
  constructor: (car) ->
    @car = car
    null
  drive: () ->
    @car.drive()
    null
  getPrice: () ->
    @car.getPrice()

class CarAudioDecorator extends CarDecorator
  constructor: (car) ->
    #CarDecorator.call this, car
    super car
  this: new CarDecorator()
  drive: () ->
    puts 'driving with nice music'
    null
  getPrice: () ->
    this.car.getPrice() + 10

class RobotCarDecorator extends CarDecorator
  constructor: (car) ->
    #CarDecorator.call this, car
    super car
  this: new CarDecorator()
  drive: () ->
    super()
    puts 'by robot'
    null
  getPrice: () ->
    this.car.getPrice() + 999

makeCar = (opt_array) ->
  c = new Car()
  for i in opt_array
    switch i
      when 'audio'
        c = new CarAudioDecorator c
      when 'robot'
        c = new RobotCarDecorator c
  c

feature_car = makeCar ['audio', 'robot']
feature_car.drive()
puts "price is #{feature_car.getPrice()}"
