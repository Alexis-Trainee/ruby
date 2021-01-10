capitais = Hash.new
capitais = {acre: 'Rio Branco', sao_paulo: 'São Paulo', }

#atribuindo novo valor
capitais[:minas_gerais] = 'Belo Horizonte'

puts capitais

#imprimindo as chaves
puts "\n"
puts 'chaves:'
puts capitais.keys

#imprimindo os valores
puts "\n"
puts 'values:'
puts capitais.values
#######################################
#deletando elementos
capitais.delete(:acre)
puts 'Depois de deletar:'
puts capitais

#imprimindo as chaves
puts "\n"
puts 'chaves:'
puts capitais.keys

#imprimindo os valores
puts "\n"
puts 'values:'
puts capitais.values

#selecionando valor
puts "\n"
puts capitais[:sao_paulo]

#verifica o tamanho
puts capitais.size

#verifica se o Hash está cheio ou vazio
puts capitais.empty?
