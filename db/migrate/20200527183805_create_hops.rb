class CreateHops < ActiveRecord::Migration[6.0]
  def change
    create_table :hops do |t|
      t.string :name
      t.string :type
      t.float :weight
      t.belongs_to :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
