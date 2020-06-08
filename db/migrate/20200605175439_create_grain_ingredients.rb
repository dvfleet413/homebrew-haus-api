class CreateGrainIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :grain_ingredients do |t|
      t.belongs_to :recipe, null: false, foreign_key: true
      t.belongs_to :grain, null: false, foreign_key: true
      t.decimal :weight

      t.timestamps
    end
  end
end
