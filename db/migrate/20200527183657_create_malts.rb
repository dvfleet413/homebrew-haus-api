class CreateMalts < ActiveRecord::Migration[6.0]
  def change
    create_table :malts do |t|
      t.string :name
      t.float :weight
      t.belongs_to :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
