def while_loop(increment, number)
  i=0
  numbers=[]
  while i< number
    puts "At the top i is #{i}"
    numbers.push(i)

    i+=increment
    puts "Numbers now:", numbers
    puts "At the bottom i is #{i}"
  end

  puts "The numbers:"
  numbers.each {|num| puts num}
end

while_loop(2, 3)
