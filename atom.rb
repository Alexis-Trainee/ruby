require 'nokogiri'

# @doc.xpath('//xmlns:title')
@doc.css('xmlns|title')
puts @doc
