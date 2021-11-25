class ChangeQuantityToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :recipe_ingredients, :quantity, :float
  end
end
