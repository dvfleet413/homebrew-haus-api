class AddHopTypeToHopIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :hop_ingredients, :hop_type, :string
  end
end
