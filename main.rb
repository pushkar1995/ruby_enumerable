require_relative 'mylist'
require_relative 'enumerable'

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |al| al < 5 })
puts(list.all? { |al| al > 5 })

puts(list.any? { |an| an == 2 })
puts(list.any? { |an| an == 5 })

filtered_list = list.filter(&:even?)
puts filtered_list.inspect