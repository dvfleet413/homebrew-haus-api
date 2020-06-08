class RemoveRecipeIdFromHops < ActiveRecord::Migration[6.0]
  def change
    remove_column :hops, :recipe_id
  end
end
