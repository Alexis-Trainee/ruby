def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  return a / b
end


puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"


# A puzzle for the extra credit, type it in anyway.
puts "Here is a puzzle."

#what = add(age, subtract(height, multiply(weight, divide(iq, 2))))
what = age+(height-(iq/2)*weight)
##Se virmos o que está acontecendo com as variáveis (analisando o que acontece com as chamadas de função para essas variáveis), obteremos a fórmula abaixo.
#35 + (74 - (50/2) * (180))
#Podemos simplificar para:
#35 + (74 - (25) * (180))
#então:
#35 + (74 - 4500)
#e finalmente obtemos:
#35 + (-4426)
#e a resposta é:
##- 4426! Uau!
puts "That becomes: #{what}. Can you do it by hand?"
