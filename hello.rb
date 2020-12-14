##puts "Hello Word";
##puts 2+2
###saída de dados
##print "Digite seu nome:"
##name= gets.chomp

##print "Digite seu sobrenome:"
##sobrenome= gets.chomp
##puts "Hello #{name} #{sobrenome}!"
##
##------------------------------------------
##class MegaAnfitriao
##  attr_accessor :nomes
##  #criando o objeto
##  def initialize(nome= "Mundo")
## @nomes = nomes
##  end
##  #Diz olá a todos
##  def diz_ola
##    if @nomes.nil?
##      puts "..."
##    elsif @nomes.respond_to?("each")
##      #@nomes é uma lista de algum tipo,
##      #assim podemos iterar!
##      @nomes.each do |nome|
##      puts "Ola #{nome}"
##  end
##    else
##      puts "Ola #{@nomes}"
##    end
##  end
##  #Dizer adeus a todos
##  def diz_adeus
##    if @nomes.nil?
##      puts"..."
##    elsif @nomes.respond_to?("join")
##      #Juntar os elementos a lista
##      #usando a vírgula como separador
##      puts "Adeus #{@nomes.join(",")}. Voltem em breve."
##    else
##      puts "Adeus #{@nomes}.Volta em breve."
##    end
##  end
##end
##if __FILE__==$0
##mg = MegaAnfitriao.new
##mg.diz_ola
##mg.diz_adeus
###Alterar o nome para "Diogo"
##mg.nomes = "Diogo"
##mg.diz_ola
##mg.diz_adeus
### Alterar o nome para um vector de nomes
##mg.nomes = ["Alberto", "Beatriz", "Carlos", "David", "Ernesto"]
##mg.diz_ola
##mg.diz_adeus
###Alterar para nil
##mg.nomes = nil
##mg.diz_ola
##mg.diz_adeus
##end
##
#puts "qual seu nome?"
#nome = gets.chomp
#puts ="você sabia que seu nome possui " + nome.length.to_s + " caracteres, " + nome + "?"
#--------------------------------------------------------------------------------------------------------------------------------------
# puts "Qual seu nome completo?"
# nome= gets.chomp
# puts 'você sabia que seu nome possúi '+nome.length.to_s + "caracteres, "+ nome + "?"
#
# puts 'First name?'
# firstName=gets.chomp

# puts 'Lest name?'
# lestName=gets.chomp

# x=firstName.length
# y=lestName.length
# z= x+y
# puts 'Your name is '+firstName+" "+lestName+" this is "+ z.to_s + ' caracteres your name'
# puts "O QUE VOCÊ QUERRRR!!!!"
# aumento= gets.chomp
# puts "O QUE VOCÊ QUE DIZER COM " + '"'+ aumento.upcase + '."?!? VOCÊ ESTÁ DESPEDIDO!!' 
#
# puts ("Tabela de Conteúdo".center)
#
# puts "Eu sou um vidente. Diga-me seu nome:"
# nome= gets.chomp
# if nome == "Alexis"
#   puts "Vejo coisas Maravilhosas no seu futuro."
# else
#   puts "Seu futuro é... Ó, Deus! Olha a hora!"
#   puts "Eu tenho que ir mil Perdões!"
# end
#
# puts 'Olá, e bem-vindo à aula de Português.'
# puts 'Meu nome é professora Hélia. Seu nome é...?'
# nome = gets.chomp

# if nome == nome.capitalize
#   puts 'Por favor, sente-se, ' + nome + '.'
# else
#   puts nome + '?  Você quer dizer ' + nome.capitalize + ', não é?'
#   puts 'Você não sabe nem escrever seu nome??'
#   resposta = gets.chomp

#   if resposta.downcase == 'sim'
#     puts 'Hunf! Vá, sente-se!'
#   else
#     puts 'FORA!!!'
#   end
# end
#
# comando=''
# while comando != 'tchau'
#   puts comando
#   comando = gets.chomp
# end
# puts 'volte logo!'
#
# num = 1
# while num <=100
#   if num == 1
#     puts num.to_s + " elefante incomoda muita gente!"
#   else  if num%2 ==0
#     puts  num.to_s + " elefantes incomodam muito mais!"
#   else if num%2 !=0
#     puts num.to_s + " elefantes incomodam muita gente!"
#   end
# end
# end
# num = num+1
# end
#
# VELHA SURDA
#
# date=
# puts 'Sou uma velha surda diga alguma coisa!'
# fala=gets.chomp
# while fala != 'TCHAU TCHAU TCHAU'
#   if fala != fala.upcase
#     puts 'QUE?!, FALE MAIS ALTO!'
#   else if fala == fala.upcase 
#     puts ("NÃO, DESDE "+ rand(1930..1950).to_s + ".")
#   end 
#   end
# fala=gets.chomp
# end
# puts "THAU!!!"
#
# puts "DIGITE UM ANO QUALQUER"
# x = gets.chomp.to_i
# puts "DIGITE UM ANO QUALQUER"
# y = gets.chomp.to_i


# while x<=y
#   if(x%4==0 or x%400==0)
#     puts x.to_s + " bissexto"
#   end
#   x+=1
# end
#
class Dragao
  def initialize nome 
    @nome = nome
    @dormindo = false
    @comidaEstomago =10 #ele está cheio
    @comidaIntestino =0 #ele não precisa ir ao quintal

    puts @nome + 'nasceu.'
  end
  def alimentar 
    puts 'Você levou o ' +@nome+ '.'
    @comidaEstomago = 10 
    passagemDeTempo
  end

  def quintal
    puts 'Você levou o' +@nome + "até o quintal."
    @comidaIntestino = 0
    passagemDeTempo
  end
  def colocarNaCama
    puts 'Você colocou o ' + @nome + " na cama."
    @dormindo = true
    3.times do 
      if @dormindo
        passagemDeTempo
      end
      if @dormindo
        @dormindo = false
        puts @nome + "está acordando."
      end
    end

    def jogar 
      puts "Você joga o" +@nome+ " no ar."
      puts "Ele dá uma risadinha e queima suas sobrancelhas."
      passagemDeTempo
    end
    def balancar 
      puts "Vocẽ balança o " +@nome + "gentilmente."
      @dormindo = true
      puts "Ele começa a cochilar..."
      passagemDeTempo
      if @dormindo
        @dormindo = false
        puts "...mas acorda quando você para."

      end
    end
    private
    #  "private" significa que os métodos definidos aqui
    #  são métodos internos do objeto. (Você pode
    #  alimentá-lo, mas você não pode perguntar se
    #  ele está com fome.)
    def comFome?
      #  Nomes de métodos podem acabar com "?".
      #  Normalmente, nós fazemos isso apenas
      #  se o métodos retorna verdadeiro ou falso,
      #  como esse:
      @comidaEstomago <=2
    end
    def precisaSair?
      @comidaIntestino >=8
    end
    def passagemDeTempo
      if @comidaEstomago > 0
        #Mover comida estômago para o intestino.
        @comidaEstomago = @comidaEstomago -1
        @comidaIntestino = @comidaIntestino +1
      else #Nosso dragão está faminto!
        if @dormindo
          @dormindo = false
          puts "Ele está acordando!"
        end
        puts @nome + "está faminto! Em desespero, ele comeu VOCÊ!"
        exit #Isso sai do programa.
      end
      if @comidaIntetino>=10
        @comidaIntestino =0
        puts "Ele está acordando!"
      end
      puts "O estômado do "+@nome "está roncando..."
    end
    if precisaSair?
      if @dormindo
        @dormindo = false
        puts "Ele está acordando!"
      end
      puts @nome + "faz a dança para ir ao quintal..."
    end 
  end
end

bichinho = Dragao.new "Norbert"
bichinho.alimentar
bichinho.jogar
bichinho.quuintal
bichinho.colocarNaCama
bichinho.balancar
bichinho.colocarNaCama
bichinho.colocarNaCama
bichinho.colocarNaCama
bichinho.colocarNaCama

