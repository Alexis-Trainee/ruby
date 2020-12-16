#defined function called cheesee_and_crackers
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"#prints the value passed
  puts "You have #{boxes_of_crackers} boxes of crackers!"#prints the value passed
  puts "Man that's enough for a party!"#prints the mensage
  puts "Get a blanket.\n"#prints the mensage
end#end function

puts "We can just give the function number directly:"#prints the mensage
cheese_and_crackers(20, 30)#passing the values to the parameters

puts "OR, we can use variables from our script:"#prints the mensage
amount_of_cheese = 10 #assigning(atribuindo) value to a variable
amount_of_crackers = 50#assigning value to a variable

cheese_and_crackers(amount_of_cheese, amount_of_crackers)#called the function 

puts "We can even do math inside too:"#print the mensage
cheese_and_crackers(10 + 20, 5 + 6)#called the function and assigning the values

puts "And we can combine the two variables and math:"#prints the menssage
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)#called the function and assigning values 

