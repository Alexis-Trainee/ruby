print "Give me a some  money: "
money = gets.chomp.to_f
small_coin = (money/100)*10.to_f
puts "So your small coin is #{small_coin} "
