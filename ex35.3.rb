def gold_room
  puts "Esta é uma sala cheia de ouro quanto vc pega?"
  choice = $stdin.gets.chomp

  print "> "

  if choice.to_i.to_s == choice
    quanto_pegou = choice.to_i

  else
    puts "Ei aprenda a digitar um número!"
  end

  if quanto_pegou <= 50
    puts "Você não tem ganância"
    exit(0)

  else 
    puts "Você é muito ganâncioso"
    exit(0)

  end
end

def animal_feroz
  puts "Tem uma porta a frente mas, tem um animal feroz deitado a fente o que você faz pra tirar o animal"
  puts "joga pedra?"
  puts "empurra o animal?"
  puts "assusta o animal?"
  animal_moved = false

  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice == "jogo pedra"
      dead("Você machuca o animal e o deixa furiozo então ele te devora")

    elsif choice == "empurro o animal"
      dead("O animal acorda super zangado e devora você")

    elsif choice == "assusto o animal" && !animal_moved
      puts "O animal se assusta e sair correndo como um raio."
      puts "A porta está livre o que você faz?"
      animal_moved=true

    elsif choice == "abro a porta"
      gold_room

    else 
      puts "Não o que isso significa digite uma das opções dadas"
    end
  end
end

def bridge
  puts "Você está em uma ponte sobre um rio violento e ela está prestes a quebrar."
  puts "A sua frente tem um grupo de esqueletos querreiros muito maus que querem te pegar o que você faz?"
  puts "Volta"
  puts "fica parado na ponte"
  puts "segue em frente"

  print "> " 
  choice= $stdin.gets.chomp

  if choice == "volto" || "fico parado na ponte"
    dead("Você foi covarde a ponte quebrou e você cai no rio cheio de crocodilos")

  elsif choice =="sigo em frente"
    puts "Você se depara com o grupo de esqueletos e luta bravamente derrotando todos um a um."
    puts "Você venceu a difícil luta e seque em frente."
    puts "Você encontra uma porta aberta e entra nela."

    gold_room
  end
end

def dead(why)
  puts why, " Bom trabalho!"
  exit(0)
end

def start 
  puts "Você esta diante de dois caminhos qual você escolhe o da direita ou o da esquerda?"

  print "> "  
  choice = $stdin.gets.chomp

  if choice == "direita"
    animal_feroz

  elsif choice == "esquerda"
    bridge
  end

end

start
