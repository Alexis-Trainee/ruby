def while_loop(number)
  i =0
  numbers = []
  while i < number
    puts "At the top i is #{i}"
    numbers.push(i)

    i +=1
    puts "Numbers now:", numbers
    puts "At the bottom i is #{i}"
  end
  puts "The numbers:"
  numbers.each {|num| puts num}
end 

#while_loop(3)
#while_loop(6)
while_loop(2)
