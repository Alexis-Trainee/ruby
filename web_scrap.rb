require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('www.cursoemvideo.com', 443)
#para fazer chamadas https
https.use_ssl = true

response = https.get("/")

#Obj. Nokogiri para o html
doc = Nokogiri::HTML(response.body)
#h1 = doc.at('h1')
#puts h1.content

#Estrair o ultimo pot
#at pega o primeiro que ele encontra
#last_post = doc.at('h3 a')
#puts last_post.content
#puts last_post['href']

#Estrair todos os pots
#search pega o resulado de todos 

doc.search('h3 a').each do |a|
  puts a.content
  puts a['href']
  puts ''
end
