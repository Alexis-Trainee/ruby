#function secret_formula this functuion  receives a value and applies its formulas
def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates#return the values 
end

#assigns(atribui) a value
start_point = 10000

#assigns secret_formula the x, y, z
x, y, z = secret_formula(start_point)
#prints the values of x, y and z after going through the function secret_formula
puts "values of #{x} x, #{y} y, #{z} z."

#prints the value of start_point
puts "value start_point #{start_point}"
start_point = start_point / 10
#the values printed here are after dividing by 10 in line 18
puts "%s X, %d Y, %d Z" %secret_formula(start_point) 


