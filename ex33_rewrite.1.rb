def while_loop(number)
  i =0
  numbers=[]
  while i<= number
    puts i
    numbers.push(i)

    i+=1
    puts "número: ", numbers
    puts "número do iterador i atualmente: #{i}"
  end
  numbers.each{|num| puts num}
end

  while_loop(10)
