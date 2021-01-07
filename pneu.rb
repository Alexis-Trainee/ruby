require 'nokogiri'
require 'open-uri'
@doc = Nokogiri::XML(File.read("parts.xml"))

car_tires = @doc.xpath('car:tire', 'car' => 'http://alicesautoparts.com/')
puts car_tires
