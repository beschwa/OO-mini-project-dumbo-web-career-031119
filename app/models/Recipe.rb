class Recipe

	@@all = []

	def initialize (name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def self.most_popular
		most_popular == @@all.first
		@@all.each do |recipe|
			if get_recipecards(recipe).size > get_recipecards(most_popular).size
				most_popular = recipe
			end
		end
		most_popular
	end

	def get_recipecards (recipe)
		RecipeCard.get_recipecards_by_recipe(recipe)
	end

	def add_ingredients(ingredients)
		
		ingredients.each do |ingredient|
			RecipeIngredient.new(ingredient, self)
		end
	end

	def ingredients
		RecipeIngredient.get_ingredients_by_recipe(self)
	end

	def allergens
		ingredients.select do |ingredient|
			Allergen.is_allergen(ingredient)
		end
	end


	def users
		RecipeCard.get_recipecards_by_recipe(self).map do |recipecard|
			recipecard = recipecard.user
		end
	end


end
