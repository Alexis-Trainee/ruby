mut = {1 => 1, 2 => 4, 3 => 9, 4 => 8, 5 => 10}

mut.each do |key, value|
  puts "key = #{key}"
  puts "value= #{value}"
  puts "key * value = #{key*value}"
  puts "---"
end
