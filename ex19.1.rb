puts "Enter a value for x "
x= gets.chomp.to_i
puts "Enter a value for y"
y= gets.chomp.to_i

def calc(num1, num2)
  calc= num1 + num2
print "The value of x is: #{num1} and the value for y is: #{num2}\n"
puts "The plus between x and y is: #{calc}"
end
calc(x , y)
