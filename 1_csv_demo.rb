require 'csv'

# Vocabulary:
#  parsing / storing
#  deserialization / serialization
#  dehydration / hydration

# Parsing (Reading) CSV
filepath    = 'data/beers.csv'

csv_options = { headers: :first_row }
CSV.foreach(filepath, csv_options) do |row|
  puts "The beer's name is #{row["Name"]}, it's from #{row["Origin"]}"
end

# Storing (writing) CSV
characters = [
  { name: "Bob", class: "Barbarian", age: 9 },
  { name: "Hank", class: "Ranger", age: 19 },
  { name: "Uni", class: "Unicorn", age: 3 },
]

characters_file_path = "data/characters.csv"
CSV.open(characters_file_path, "wb") do |file|
  file << ["name", "class", "age"]
  characters.each do |character|
    file << [character[:name], character[:class], character[:age]]
  end
end
