class Malt < ApplicationRecord
  has_many :recipes, through: :malt_ingredients
end
