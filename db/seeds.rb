# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

smoothies = Smoothie.create(
    [
        {name: "Green Monster"},
        {name: "Orange Bliss"},
        {name: "Strawberries Wild"}

    ]
)

ingredients = Ingredient.create(
    [
        {name: "Sugar"},
        {name: "Ice"},
        {name: "Orange"},
        {name: "Kale"},
        {name: "Stawberries"},
        {name: "Chocolate"}
    ]
)


smoothie_ingredients = (
    [
        {unit: 'cup', quantity: 1, smoothie_id: 1, ingredient_id: 2},
        {unit: 'teaspoon', quantity: 3, smoothie_id: 1, ingredient_id: 1},
        {unit: 'cup', quantity: 2, smoothie_id: 1, ingredient_id: 4},
    ]
)