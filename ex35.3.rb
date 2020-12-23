def gold_room
  puts "Esta é uma sala cheia de ouro quanto você pega?"
  choice = $stdin.gets.chomp
  print "> "

  if choice.to_i.to_s == choice
    quanto_pegou = choice.to_i
    typed = false
  else
    puts "Ei aprenda a digitar um número!"
    gold_room
  end


  if quanto_pegou < 500
    puts "Você perdeu a chance de ficar rico(a) mas, continua vivo(a) parabém!!!"
    exit(0)

  elsif quanto_pegou >= 1000
    puts "Você retirou ouro demais e desparou a armadilha."
    dead("A porta da sala dourada se fechou e você ficou preso nela para sempre!!!!!")
  else 
    puts "Você é muito ganâncioso(a), continua vivo(a) e agora rico(a) parabém!!!!"
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

      puts "Abre a porta?"
      puts "Volta?"
      puts "Fica onde está?"

    elsif choice == "volto" || choice == "fico onde estou"
      dead("Hooo não os esqueletos voltaram e pegaram vc destraido você ja muito cansado(a) você não resistiu a batalha e foi morto(a).")

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
  puts "fica onde está"
  puts "segue em frente"

  player_move = false

  while true
    print "> " 
    choice= $stdin.gets.chomp

    if choice == "volto" || choice == "fico onde estou" 
      dead("Você foi covarde a ponte quebrou e você cai no rio cheio de crocodilos famintos")

    elsif choice =="sigo em frente" && !player_move
      puts "Você se depara com o grupo de esqueletos e luta bravamente derrotando todos um a um."
      puts "Você venceu a difícil luta e segue em frente."
      puts "Você encontra uma porta aberta e entra nela."
      player_move = true
      gold_room

    else
      puts "Não sei o que isso significa!"
    end
  end
end

def dead(why)
  puts why, " Você perdeu!!!"
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

  else 
    puts "!!!ATENÇÃO é pra escolher direita ou erquerda ATENÇÃO!!!"
    start
  end

end

start

