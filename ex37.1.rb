#POO
#Herança e Polimorfismo

def ola
  puts "teste"
end

def ola
  puts "teste filho"#Vai sobrescrever o método inicial que printava apenas a palavra teste
end

ola#vai printar na tela a frase teste filho e não mais apenas a palavra teste.

# E EM CASO DE PRECISAR CHAMAR TANDO O FILHO COMO O PAI?
# Usa-se a palavra-chave: SUPER
# EX:
require 'byebug'

class Danilo
  def ola
    "ola Danilo"
  end
end
