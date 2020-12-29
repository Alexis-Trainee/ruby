#require: chama na propria pasta
require './animal.rb'
#require_relative: procura o arquivo
require './cachorro.rb'

animal = Animal.new
puts "animal: "
animal.pular
# animal.morder

cachorro = Cachorro.new
puts "cachorro"
cachorro.latir
