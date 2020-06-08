class YeastIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :yeast

  def name
    self.yeast.name
  end
end
