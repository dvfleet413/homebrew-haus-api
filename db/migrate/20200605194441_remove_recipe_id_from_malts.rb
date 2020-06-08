class RemoveRecipeIdFromMalts < ActiveRecord::Migration[6.0]
  def change
    remove_column :malts, :recipe_id
  end
end
