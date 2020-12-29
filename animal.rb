class Animal
  def pular
    puts 'Toing! tóim! bóim! póim'
  end

  def dormir
    puts 'ZzZzZzzzz'
  end
end

class Cachorro <Animal 
  def latir
    puts "au au"
  end
end

cachorro= Cachorro.new
cachorro.pular
cachorro.dormir
cachorro.latir
