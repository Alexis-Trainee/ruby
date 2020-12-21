##inicio
#i=0
#numbers =[]

##loop
#while i< 6
#  puts "At the top i is #{i}"
#  numbers.push(i)

#  i+= 1
#  puts "Number now:", numbers
#  puts "At the bottom i is #{i}"
#end

#puts "the number:"

#numbers.each {|num| puts num}
######################################
i=0
numbers=[]

while i<=10
  puts "o valor é #{i}"
  numbers.push(i)

  i+=1
  puts "número #{i}"
end

numbers.each{|x| puts x}



