class User
  def add(name)
    #variável de instância
    @name = name
    puts "User adicionado"
    hello
  end
  def hello
    puts "Seja bem vindo, #{@name}!"
  end
end

user = User.new
user.add('João')
