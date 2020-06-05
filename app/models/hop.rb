class Hop < ApplicationRecord
  has_many :recipes, through: :hop_ingredients
end
