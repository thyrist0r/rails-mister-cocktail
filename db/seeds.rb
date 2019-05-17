require 'open-uri'

Dose.destroy_all
Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
json = open(url).read
ingredients = JSON.parse(json)
ingredients =  ingredients["drinks"]
names = ingredients.map do |hash|
  hash["strIngredient1"]
end
names.each do |name|
  Ingredient.create!(name: name)
end
