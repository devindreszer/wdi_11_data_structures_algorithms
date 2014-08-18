require_relative 'element'
require_relative 'linked_list'
require 'pry'

first = Element.new("hello")
list = LinkedList.new(first)
second = Element.new("world")
third = Element.new("today")
new_second = Element.new("crazy")
list.append(second)
list.append(third)
list.insert_after(first, new_second)
list.remove(new_second)
puts list.length
puts list.find("worl")
puts list.to_s
