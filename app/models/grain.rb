class Grain < ApplicationRecord
  has_many :recipes, through: :grain_ingredients
end
