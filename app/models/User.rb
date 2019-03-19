class User

	@@all = []


	def initialize (name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def recipes
		get_recipes(self).map do |recipecard|
			recipecard = recipecard.recipe
		end
	end

	def add_recipe_card (recipe, date, rating)
		RecipeCard.new(recipe, self, date, rating)

	end

	def declare_allergen (ingredient)
		Allergen.new(ingredient, self)
	end

	def allergens
		Allergen.get_allergens_by_user(self).map do |allergen|
			allergen = allergen.ingredient
		end
	end

	def get_recipes(user)
		RecipeCard.get_recipecards_by_user(user)
	end

	def top_three_recipes
		get_recipes(self).sort_by{|recipe| recipe.rating}[0..2]
	end

	def most_recent_recipe
		get_recipes(self)[-1]
	end


end
