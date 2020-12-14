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
puts "DIGITE UM ANO QUALQUER"
x = gets.chomp.to_i
puts "DIGITE UM ANO QUALQUER"
y = gets.chomp.to_i


while x<=y
  if(x%4==0 or x%400==0)
    puts x.to_s + " bissexto"
  end
  x+=1
end
