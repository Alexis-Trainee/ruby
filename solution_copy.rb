require "net/http"
#require "rexml/document"
#require "speech"

link = Net::HTTP.get('ibiblio.org')
response = link.get('/xml/examples/shakespeare/macbeth.xml')

puts response.code
puts response.menssage
puts response.body
