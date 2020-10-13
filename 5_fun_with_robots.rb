require 'json'
require 'open-uri'

base_url = 'https://api.github.com/users/'
usernames = %w[
  amanianai
  ​Antonio
  ​ondinec
  ​kuron3ko89
  ​areebijaz
  ​sandyk47
  ​RobertK3000
  ​rycmak
  ​jurek91
  ​susanjsp
  ​friendlyantz
]

usernames.each do |username|
  serialized_user = open(base_url + username).read
  user = JSON.parse(serialized_user)
  puts "#{user['name']}(#{user['login']}) has #{user['public_repos']} public repositories."
end
