class CreateSavedRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :saved_recipes do |t|
      t.references :users, null: false, foreign_key: true
      t.references :recipes, null: false, foreign_key: true
      t.boolean :favourite, default: false
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
