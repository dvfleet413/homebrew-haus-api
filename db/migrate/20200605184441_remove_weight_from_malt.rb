class RemoveWeightFromMalt < ActiveRecord::Migration[6.0]
  def change
    remove_column :malts, :weight
  end
end
