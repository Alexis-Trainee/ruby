def display
  condicao =''
  resultado = 0

  puts "Digite uma das opções abaixo:"
  puts '1 para realizar operação'
  puts '2 para sair'

  condicao =gets.chomp.to_s

  if condicao =='1'
    puts 'digite o primeiro número: '
    num1 = gets.chomp.to_i

    puts 'Digite o segundo número: '
    num2 = gets.chomp.to_i

    puts 'Qual a operação matematica (+, -, /, *) será efetuada: '

    operacao = gets.chomp

    case operacao
    when '+'
      resultado = num1 + num2
      puts "A soma de #{num1} + #{num2} é igual a #{resultado}"
      display

    when '-'
      resultado = num1 - num2
      puts "A subtração de #{num1} - #{num2} é igual a #{resultado}"
      display

    when '/'
      resultado = num1/num2
      puts "A divisão de #{num1} / #{num2} é igual a #{resultado}"
      display

    when '*'
      resultado = num1 * num2
      puts "A multiplicação de #{num1} + #{num2} é igual a #{resultado}"
      display
    end

  elsif condicao == '2'
    puts 'SAINDO'

  else 
    puts "Não sei o que isto quer dizer"
    display
  end
end

display
