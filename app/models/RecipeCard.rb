class RecipeCard

	@@all = []

	attr_reader :user, :recipe, :date, :rating

	def initialize (recipe, user, time, rating)
		@user = user
		@recipe = recipe
		@date = time.month.to_s + "/" + time.day.to_s + "/" + time.year.to_s
		@rating = rating
		@@all << self
	end

	def self.all
		@@all
	end


	def self.get_recipecards_by_user (user_to_search)
		@@all.select do |recipe_card|
			recipe_card.user = user_to_search
		end
	end

	def self.get_recipecards_by_recipe (recipe_to_search)
		@@all.select do |recipe_card|
			recipe_card.recipe = recipe_to_search
		end
	end

end
