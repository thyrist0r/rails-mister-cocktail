# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'open-uri'
# require 'json'
# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# user_serialized = open(url).read
# user = JSON.parse(user_serialized)

# user.first.each do |attribute|
#   Ingredient.create(name: attribute[0]["strIngredient1"])
#   end


Ingredient.create(name: "Vodka")
Ingredient.create(name: "Orange")
Ingredient.create(name: "Gin")

Cocktail.create(name: "Mojito")
Cocktail.create(name: "Gin Tonic")
Cocktail.create(name: "Moscow Mule")
Cocktail.create(name: "Long Island Ice Tea")
