def method_name
  begin
    puts "Hello World!!!"
  end
end

#method_name
# def create_or_update_batch
#   if @batch.nil?
#@batch = BookBatch.create(book_batch.batch_attrs)
#   end
#@batch.update
# end

# create_or_update_batch

begin
  IO.sysopen('/foo/bar')
# rescue Errno::ENOENT
# puts "Arquivo não entrado."
# rescue Errno::EACCES
#   puts "Você não possui permissão para abrir este arquivo."
rescue Errno::ENOENT, Errno::EACCES
  puts "Houve um erro ao abrir o arquivo.."
 end

#fazendo a mesma coisa sem usar begin
def get_null_device
  IO.sysopen('/foo/bar')
rescue Errno::ENOENT
  puts "O arquivo solicitado não pode ser aberto."
end

["a.txt","b.txt","c.txt"].map do |f|
  IO.sysopen(f)
rescue Errno::ENOENT
  puts "Can't open IO device: #{f}."
end
