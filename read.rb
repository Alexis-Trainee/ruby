require 'nokogiri'
require 'open-uri'
@doc = Nokogiri::HTML(URI.open("http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml"))
  # all_speech = @doc.xpath("//speech + MALCOLM")
all_speeches = @doc.xpath("//speech").remove.to_a
  #puts all_speeches
  a = all_speeches.map{ |s| { s.css("speaker/text()").to_s => s.css("line").count } }

  cache = Hash.new { |h, k| h[k] = { k => 0 } }
puts a.flat_map(&:to_a).each_with_object(cache) { |(k,v),h| h[k][k] += v }.values

  puts cache
