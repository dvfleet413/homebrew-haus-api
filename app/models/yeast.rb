class Yeast < ApplicationRecord
  has_many :yeast_ingredients
  has_many :recipes, through: :yeast_ingredients
end
