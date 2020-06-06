class Hop < ApplicationRecord
  has_many :hop_ingredients
  has_many :recipes, through: :hop_ingredients
end
