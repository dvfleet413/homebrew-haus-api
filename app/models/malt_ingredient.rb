class MaltIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :malt

  def name
    self.malt.name
  end
end
