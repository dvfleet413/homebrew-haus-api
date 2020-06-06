class Malt < ApplicationRecord
  has_many :malt_ingredients
  has_many :recipes, through: :malt_ingredients
end
