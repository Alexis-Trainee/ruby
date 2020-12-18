# prints the sentence
puts "You enter a dark room with two doors. Do you go through door #1 or door #2?"
print "> "

#what does it do?????????
#takes what is typed by the user.
door = $stdin.gets.chomp
# if door is equal "1"
if door == "1"
  #prints the sentence
  puts "There's a giant bear here eating a cheese cake. What do you do?"
  #prints the sentence
  puts "1. Take the cake."
  #prints the sentence.
  puts "2. Scream at the bear."

  print ">"
  #what does it do????
  #takes what is types by user
  bear = $stdin.gets.chomp
  #if bear is equals the "1"
  if bear == "1"
    #prints the sentence
    puts "The bear eats your face off. Good job!"
    #elsfi bear is equals the "2"
  elsif bear == "2"
    #prints the sentence
    puts "the bear eats your legs off. Good job!"
    #else, if the condition is not met 
  else
    #prints the sentence
    puts "Well, doing %s is probably better. Bear runs away."%bear
  end
  #elsif door is equals "2" 
elsif door =="2"
  #prints the sentences
  puts "You stare into the endless abyss at Cthulhu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."

  print ">"
  #takes what is typed by user
  insanity = $stdin.gets.chomp
  #if insanity is equal "1" or insanity is equal "2"
  if insanity == "1"|| insanity =="2"
    #prints the sentence
    puts "Your body survives powered by a mind of jello. Good job!"
    #else, if the condition is not met
  else
    #prints the sentence
    puts "The insanity rots your eyes into a pool of muck. Good job!"
  end
  #else, if the condition is not met
else
  #print the sentence
  puts "You stumble around and fall on a knife and die. Good job!"
end 
