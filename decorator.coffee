# decorator
# http://www.adobe.com/jp/devnet/html5/articles/javascript-design-patterns-pt2-adapter-decorator-factory.html#
#

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

c = new Car
c = new CarAudioDecorator c
c.drive()
puts c.getPrice()
