class Carro
  def portas
    puts "4 portas"
  end

  def cor
    puts 'vermelho'
  end

  def motor
    puts '1.0'
  end
end

class Celta < Carro
  def popular
  end

  def portas
    puts "2 portas"
  end

  def cor
    # super
    puts "azul"
  end
end

celta = Celta.new

puts "celta"
celta.motor
celta.portas
celta.cor
