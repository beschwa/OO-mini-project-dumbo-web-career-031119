class Ingredient

	@@all = []

	attr_reader :name


	def initialize (name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def self.most_common_allergen
		most_common_allergen = @@all.first
		@@all.each do |ingredient|
			if (get_allergens(ingredient).size > get_allergens(most_common_allergen).size)
				most_common_allergen = ingredient
			end
		end
	end

	def get_allergens (ingredient)
		Allergen.get_allergens_by_ingredient(ingredient)
	end



end

