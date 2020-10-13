require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'
json_string = File.open(filepath).read
beers_json = JSON.parse(json_string)

beers = beers_json["beers"]

beers.each do |beer|
  # beer => {"name"=>"Edelweiss", "appearance"=>"White", "origin"=>"Austria"}
  puts "The beer is #{beer["name"]}, and it's XXXX and from XXXXX"
end
