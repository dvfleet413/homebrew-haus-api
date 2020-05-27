class RenameTypeOnHops < ActiveRecord::Migration[6.0]
  def change
    rename_column :hops, :type, :hop_type
  end
end
