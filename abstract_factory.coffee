# Abstract Factory
#
# オブジェクトを作成するためのオブジェクト。
# Factoryパターンとは関係ないのでは。
# http://www.dofactory.com/javascript/abstract-factory-design-pattern

puts = console.log

class Employee
  constructor: (name) ->
    @name = name
  say: () ->
    puts "I am #{@name}"

class EmployeeFactory
  create: (name) ->
    new Employee name

person = []
employeeFactory = new EmployeeFactory
person.push employeeFactory.create 'Tim'
person.push employeeFactory.create 'Robert'
person.push employeeFactory.create 'Alex'

puts person


