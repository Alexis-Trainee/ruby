#function add numbers de increment and upper limit
def range_loop(increment, upper_limit)

  #variable number is equal the array empty
  numbers = []

  #for number of 0 to upper_limit do:
  for number in (0...upper_limit)

    #prints the mensage + valuer in number
    puts "The number is: #{number}"

    #Add value in number to the array numbers
    numbers.push(number)
  end

  #prints the mensage
  puts "The number:"

  #for number in numbers do:
  for number in numbers

    #prits number
    puts number
  end
end

#calling the function and passing the parameters 
range_loop(1, 6)
