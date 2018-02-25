require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    if yield(collection[i])
      collection[i]
      break
    end
    i = i + 1
  end
end

my_collect = [1..10]

my_find(my_collect){ |i| i % 3 == 0 && i % 5 == 0 }
