result = ''

loop do
  puts result
  puts "\n"
  puts 'Selecione uma das seguintes opções:'
  puts '1 para calcular'
  puts '2 para sair'

  option = gets.chomp.to_s

  if  option == '1'
    puts 'Digite um número: '
    num1 = gets.chomp.to_i

    puts 'Digite outro número: '
    num2 = gets.chomp.to_i

    puts 'Qual a operação? +, -, /, *'
    op = gets.chomp.to_s

    case op 
    when '+'
      result = num1 + num2
      puts "O resultado é #{result}"

    when '-'
      result = num1 - num2
      puts "O resultado é #{result}" 

    when '/'
      result = num1 / num2
      puts "O resultado é #{result}" 

    when '*'
      result = num1 * num2
      puts "O resultado é #{result}" 
    end
  elsif option == '2'
    break
  else
    result='invalido digite uma das opções dadas!'
  end
end
