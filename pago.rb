require_relative 'itens'
require_relative 'mercantil'

itens = Itens.new
puts 'Qual produto você vai comprar?'
itens.nome = gets.chomp

puts 'Qual o valor do produto?'
itens.valor = gets.chomp

Mercantil.new(itens.nome, itens.valor).comprou
