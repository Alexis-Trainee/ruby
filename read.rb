require 'nokogiri'
require 'open-uri'
@doc = Nokogiri::HTML(URI.open("http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml"))
  all_speech = @doc.xpath("//speech")

