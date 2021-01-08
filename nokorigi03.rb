require 'nokogiri'
#require 'open-uri'

@doc = File.open('index.html'){|f| Nokogiri::HTML(f)}


puts @doc

