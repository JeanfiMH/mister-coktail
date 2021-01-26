# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "vodka")
Ingredient.create(name: "rhum")
Ingredient.create(name: "tequila")
Ingredient.create(name: "orange juice")
Ingredient.create(name: "tomato juice")
Ingredient.create(name: "sugar")
Ingredient.create(name: "vanilla")

Cocktail.create(name: "cuba libre")
Cocktail.create(name: "mojito")
Cocktail.create(name: "tequila sunrise")

Dose.create(description: "4 cl", cocktail: Cocktail.all[0], ingredient: Ingredient.all[4])
Dose.create(description: "1 feuille", cocktail: Cocktail.all[1], ingredient:Ingredient.all[2])
Dose.create(description: "5 glaçons", cocktail: Cocktail.all[2], ingredient: Ingredient.all[1])
Dose.create(description: "1 feuille", cocktail: Cocktail.all[0], ingredient:Ingredient.all[2])
Dose.create(description: "5 glaçons", cocktail: Cocktail.all[0], ingredient: Ingredient.all[1])