require 'json'
require 'open-uri'

puts 'Cleaning the database........'

Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

puts "Database cleaned."

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
puts "Fetching ingredients from API..."
ingredients_serialized = URI.open(url).read
ingredients_data = JSON.parse(ingredients_serialized)

puts "Creating ingredients..."

ingredients_data['drinks'].each do |ingredient_hash|
  name = ingredient_hash['strIngredient1']
  Ingredient.create!(name:name)
end

puts "Finished seeding #{Ingredient.count} ingredients!"
