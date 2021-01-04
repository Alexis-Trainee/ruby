class Mercado
  #as palavras produto e preco aqui são apenas parâmetros podendo serem substituidas por quaisquer outras palavras.
def initialize(produto, preco)
  @produto = produto #apenas parâmetros
  @preco = preco#apenas parâmetros
end

def comprar 
  puts "Você comprou o produto #{@produto} no valor de #{@preco}"
end
end
