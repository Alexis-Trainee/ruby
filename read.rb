require 'nokogiri'
require 'open-uri'
@doc = Nokogiri::HTML(URI.open("http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml"))
all = @doc.xpath("//persona")

puts all
