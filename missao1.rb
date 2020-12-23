nome = -> (names){puts names.capitalize()}
# names = gets.chomp
# nome.call(names)

def capitalize_name(nome)
  name1 = gets.chomp
  name2 = gets.chomp
  nome.call(name1)
  nome.call(name2)
end

capitalize_name(nome)
