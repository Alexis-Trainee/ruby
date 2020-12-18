#declaration of variables 
people = 30 
cars = 40
trucks = 15

#conditional if cars is greater than people
if cars > people

  #prints the sentence  
  puts "we should take the cars."

  #conditional elsif (else if) cars is less than people
elsif cars < people 

  #prints the sentence
  puts "We should not take the cars."

  #else, this is if the  condition is not met
else 
  #print the sentence
  puts "We can't decide."
end

#condition if trucks is greater than cars 
if trucks > cars 
  #prints the semntence
  puts "That's too many trucks."

  #condition elsif (else if) trucks is less than cars
elsif trucks < cars
  #prints the sentence
  puts "Maybe we could take the trucks."
  #else, this is if the condition is not met
else 
  #print the sentence
  puts "We still can't decide."
end
#if people is greater than truck
if people > trucks
  #prints the sentence
  puts "alright, let's just take the trucks."
  #else, this is if the condition is not met
else 
  #prints the sentence
  puts "Fine, let's stay home then."
end
