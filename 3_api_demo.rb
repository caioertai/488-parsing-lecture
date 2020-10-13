require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username
puts "What github user you want to spy on?"
username = gets.chomp

url = "https://api.github.com/users/#{username}"
user_json_string = open(url).read # => string
user_data = JSON.parse(user_json_string)

puts "#{user_data["name"]} has #{user_data["public_repos"]} public repos."
