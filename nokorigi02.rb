#uma lista de todos os personagens de todos os programas do doc show.xml.
require 'nokogiri'
#require 'open-uri'

@doc = Nokogiri::XML(File.open("show.xml"))
characters = @doc.xpath("//dramas//character")
sitcoms = @doc.css("sitcoms name")
#puts characters
puts sitcoms
