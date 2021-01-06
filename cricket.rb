def total_overs number
  @number = number
  @result = @number / 6
  puts "#{@result.to_i} overs and #{((@result%1)*6.round()).to_i} balls were bowled by the bowler."
end

puts "How many balls are thrown?"
total_overs(gets.chomp.to_f)


