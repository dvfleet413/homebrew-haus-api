class Recipe < ApplicationRecord
    has_many :grain_ingredients
    has_many :malt_ingredients
    has_many :hop_ingredients
    has_many :yeast_ingredients
    has_many :grains, through: :grain_ingredients
    has_many :malts, through: :malt_ingredients
    has_many :hops, through: :hop_ingredients
    has_one :yeast, through: :yeast_ingredients
    accepts_nested_attributes_for :grains, :malts, :hops, :yeast
    has_many :favorites
    has_many :users, through: :favorites
end
