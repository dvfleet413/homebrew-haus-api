class RemoveRecipeIdFromYeast < ActiveRecord::Migration[6.0]
  def change
    remove_column :yeasts, :recipe_id
  end
end
