class GrainIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :grain
end
