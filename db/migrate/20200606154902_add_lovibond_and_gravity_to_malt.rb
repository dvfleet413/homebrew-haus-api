class AddLovibondAndGravityToMalt < ActiveRecord::Migration[6.0]
  def change
    add_column :malts, :lovibond, :decimal
    add_column :malts, :gravity, :decimal
  end
end
