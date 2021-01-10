#chamando a gem nokogiri
require 'nokogiri'
require 'open-uri'

#chamando o documento da internet e armazenando na variável
@doc = Nokogiri::HTML(URI.open('http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml'))

# def x
delete = @doc.xpath('//all').ignore.to_a
todas_as_falas = @doc.xpath("//speaker")
 @doc.search('speaker').each do |all|
  all.remove
end


puts todas_as_falas
#puts todas_as_falas[0].to_s
