class HopIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :hop

  def name
    self.hop.name
  end
end
