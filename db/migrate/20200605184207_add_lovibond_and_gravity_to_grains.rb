class AddLovibondAndGravityToGrains < ActiveRecord::Migration[6.0]
  def change
    add_column :grains, :lovibond, :decimal
    add_column :grains, :gravity, :decimal
  end
end
