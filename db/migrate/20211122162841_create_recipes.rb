class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :cook_time
      t.integer :servings
      t.string :cuisine
      t.text :instructions

      t.timestamps
    end
  end
end
