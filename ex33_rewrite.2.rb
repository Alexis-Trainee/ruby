def while_loop(increment, number)
  i=increment
  numbers=[]
  while i<=number  
    puts "O número atual do iterador i é:#{i}"
    numbers.push(i)
    puts "numbers: ",numbers
i+=increment
  end
  puts "the numbers:"
  numbers.each{|x|puts x}
end
while_loop(1, 10)
