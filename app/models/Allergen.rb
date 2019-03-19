class Allergen

	@@all = []
	attr_reader :ingredient, :user

	def initialize (ingredient, user)
		@ingredient = ingredient
		@user = user
		@@all << self
	end

	def self.all
		@@all
	end

	def self.get_allergens_by_user (user)
		@@all.select do |allergen|
			allergen.user = user
		end
	end

	def self.get_allergens_by_ingredient (ingredient)
		@@all.select do |allergen|
			allergen.ingredient == ingredient
		end
	end

	def self.is_allergen (ingredient_query)
		@@all.map{|allergen|allergen.ingredient}.include?(ingredient_query)
	end


end
