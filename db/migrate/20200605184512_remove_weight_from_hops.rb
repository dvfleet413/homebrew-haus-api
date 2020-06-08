class RemoveWeightFromHops < ActiveRecord::Migration[6.0]
  def change
    remove_column :hops, :weight
  end
end
