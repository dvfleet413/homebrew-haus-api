class Grain < ApplicationRecord
  has_many :grain_ingredients
  has_many :recipes, through: :grain_ingredients
end
