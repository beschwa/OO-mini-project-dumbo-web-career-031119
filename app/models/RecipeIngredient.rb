class RecipeIngredient

	@@all = []

	attr_reader :ingredient, :recipe

	def initialize (ingredient, recipe)
		@recipe = recipe
		@ingredient = ingredient

		@@all << self
	end

	def self.all
		@@all
	end

	def self.get_ingredients_by_recipe (recipe)
		@@all.select{|recipeingredient| recipeingredient.recipe == recipe}.map{|recipe| recipe.ingredient}
	end




end
