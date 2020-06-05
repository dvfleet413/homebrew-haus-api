class CreateYeastIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :yeast_ingredients do |t|
      t.belongs_to :recipe, null: false, foreign_key: true
      t.belongs_to :yeast, null: false, foreign_key: true

      t.timestamps
    end
  end
end
