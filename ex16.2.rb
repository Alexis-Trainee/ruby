filename = ARGV.first

puts""" We're going to erase #{filename}
If you don't want that, hit CTRL-C (^C).
If you do want that, hit RETURN."""

$stdin.gets
puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line1: "
line1 = $stdin.gets.chomp
print "Line2: "
line2 = $stdin.gets.chomp
print "line3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write("#{line1}\n#{line2}\n#{line3}\n")
