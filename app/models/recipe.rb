class Recipe < ApplicationRecord
    has_many :grain_ingredients
    has_many :malt_ingredients
    has_many :hop_ingredients
    has_one :yeast_ingredient
    has_many :grains, through: :grain_ingredients
    has_many :malts, through: :malt_ingredients
    has_many :hops, through: :hop_ingredients
    has_one :yeast, through: :yeast_ingredient
    accepts_nested_attributes_for :grain_ingredients, :malt_ingredients, :hop_ingredients, :yeast_ingredient
    has_many :favorites
    has_many :users, through: :favorites

    def color
        grain_color= self.grain_ingredients.reduce(0){|sum, ingredient| (sum + (ingredient.grain.lovibond * (ingredient.weight / 16)/5))}
        malt_color= self.malt_ingredients.reduce(0){|sum, ingredient| (sum + (ingredient.malt.lovibond * (ingredient.weight)/5))}
        grain_color + malt_color
    end
end
