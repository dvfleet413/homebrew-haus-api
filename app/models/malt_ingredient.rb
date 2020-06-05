class MaltIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :malt
end
