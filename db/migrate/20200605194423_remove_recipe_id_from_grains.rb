class RemoveRecipeIdFromGrains < ActiveRecord::Migration[6.0]
  def change
    remove_column :grains, :recipe_id
  end
end
