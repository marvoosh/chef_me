class CreateRecipeIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipes, null: false, foreign_key: true
      t.references :ingredients, null: false, foreign_key: true
      t.integer :quantity
      t.string :unit

      t.timestamps
    end
  end
end
