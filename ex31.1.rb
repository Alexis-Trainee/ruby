puts "Você entra em uma sala escura com duas portas. Você passa pela porta #1 ou porta #2"
print ">"
door = $stdin.gets.chomp

if door =="1"
  puts "Há um urso gigante aqui comendo um bolo de queijo. O que você faz?"
  puts "1. Pegue o bolo."
  puts "2. Grite com o urso."

  print ">"
  bear = $stdin.gets.chomp

  if bear =="1"
    puts "O urso come sua cara. Bom trabalho!"
  elsif bear =="2"
    puts "O urso come suas pernas. Bom trabalho!"
  else
    puts "Bem, fazer %s provavelmente é melhor. Bear foge." %bear
    end

elsif door =="2"
  puts "Você olha para o abismo sem fim na retina de Cthulhu."
  puts "1. Mirtilos."
  puts "2. Prendedores de roupa de jaqueta amarela."
  puts "3. Entendendo revólveres gritando melodias."

  print ">"
  insanity = $stdin.gets.chomp
  
  if insanity =="1"|| insanity =="2"
    puts "Seu corpo sobrevive movido por uma mente de gelatina. Bom trabalho!"
  else
    puts "A insanidade apodreceu seus olhos em uma poça de lama. Bom Trabalho!"
  end
else 
  puts "Você tropeça, cai em uma faca e morre. Bom trabalho!"
end
