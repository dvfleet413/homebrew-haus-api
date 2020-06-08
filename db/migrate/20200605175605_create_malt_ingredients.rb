class CreateMaltIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :malt_ingredients do |t|
      t.belongs_to :recipe, null: false, foreign_key: true
      t.belongs_to :malt, null: false, foreign_key: true
      t.decimal :weight

      t.timestamps
    end
  end
end
