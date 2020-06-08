class RemoveHoptypeFromHops < ActiveRecord::Migration[6.0]
  def change
    remove_column :hops, :hop_type
  end
end
