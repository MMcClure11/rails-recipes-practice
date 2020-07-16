# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
r = Recipe.create(name: "Apple Pie", description: "Grandma's Recipe", instructions: "Mix, bake, eat", prep_time: 10, cook_time: 45)

r2 = Recipe.create(name: "Chocolate Chip Cookies", description: "Dad's recipe", instructions: "Mix, bake, eat with milk", prep_time: 25, cook_time: 12)

r3 = Recipe.create(name: "Green Smoothie", description: "Healthy Snack", instructions: "Peel and dice fruits. Blend until smooth.", prep_time: 15, cook_time: 1)

i = Ingredient.create(name: "Flour")
i2 = Ingredient.create(name: "Sugar")
i3 = Ingredient.create(name: "Apples")
i4 = Ingredient.create(name: "Butter")
i5 = Ingredient.create(name: "Chocolate Chips")
i6 = Ingredient.create(name: "Spinach")
i7 = Ingredient.create(name: "Milk")
i8 = Ingredient.create(name: "Orange Juice")

#recipes is not technically an array, it is a collection
#using << is a rails collection_proxy method
#because of the join table, the << method behaves a little differently than if it's a belongs_to/has_many