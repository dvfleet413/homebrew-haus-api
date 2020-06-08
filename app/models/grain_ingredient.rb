class GrainIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :grain

  def name
    self.grain.name
  end
end
