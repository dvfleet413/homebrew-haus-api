class RemoveWeightFromGrains < ActiveRecord::Migration[6.0]
  def change
    remove_column :grains, :weight
  end
end
