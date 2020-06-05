class Yeast < ApplicationRecord
  has_many :recipes, through: :yeast_ingredients
end
