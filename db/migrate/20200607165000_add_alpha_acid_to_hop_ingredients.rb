class AddAlphaAcidToHopIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :hop_ingredients, :alpha_acid, :decimal
  end
end
