class HopIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :hop

  def name
    self.alpha_acid ? "#{self.hop.name} @ #{self.alpha_acid}% AA" : self.hop.name
  end
end
