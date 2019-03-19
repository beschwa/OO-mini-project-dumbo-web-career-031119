require_relative '../config/environment.rb'


kale = Ingredient.new("kale")
spinach = Ingredient.new("spinach")
cheese = Ingredient.new("cheese")
ham = Ingredient.new("ham")
bread = Ingredient.new("bread")
chicken = Ingredient.new("chicken")

mike = User.new("mike")
jarrian = User.new("jarrian")
kirs = User.new("kirs")
serena = User.new("serena")

cake = Recipe.new("cake")
pizza = Recipe.new("pizza")


cake.add_ingredients([kale])
cake.add_ingredients([cheese])
cake.add_ingredients([ham])

mike.add_recipe_card(cake, Time.now, 5)
mike.add_recipe_card(pizza, Time.now, 7)

kirs.add_recipe_card(pizza, Time.now, 5)
kirs.add_recipe_card(cake, Time.now, 7)

binding.pry
