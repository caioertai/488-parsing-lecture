require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from http://www.epicurious.com
puts "What are you looking for?"
user_query = gets.chomp
url = "https://www.tudogostoso.com.br/busca?q=#{user_query}"
html_string = open(url).read
doc = Nokogiri::HTML(html_string)

recipe_title_elements = doc.search("h3.title")
recipe_title_elements.each do |title_element|
  puts title_element.text.strip
end
