#Use ARGV to get a filename.
filename = ARGV.first

#comando open siguinifica agora execute e leia as instruções
#now means run and read the instructions
txt = open(filename)

#print one menssage
puts "Here's your file #{filename}:"
#call a function in txt called read.TXT.READ ask: "hey, TXT! make your read command without parameters!"
print txt.read


#solicita ao usuário que digite o nome do arquivo novamente
#prompts the user to enter the file name again
print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)
print txt_again.read
