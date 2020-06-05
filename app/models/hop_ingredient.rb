class HopIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :hop
end
