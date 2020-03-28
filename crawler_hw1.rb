require 'nokogiri'
require 'open-uri'
require 'csv'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
html = open('https://data.gov.tw/dataset/31897').read
resource = Nokogiri::HTML(html)
#resource.css('div div div div a').each do |link|
#   puts link.content
#end

puts resource.css('div div div div a')[10].content
target_href = resource.css('div div div div a')[10].content

target = open(target_href).read

#p open(target_href).read


