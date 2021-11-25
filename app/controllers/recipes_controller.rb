class RecipesController < ApplicationController
  def index
    @ingredients = ingredients_collection
    @saved_recipes = current_user.saved_recipes
    if params[:query].present?
      @ingredient_ids = params[:query][:ingredient_ids]
      @recipes = find_recipes(@ingredient_ids)
    else
      @recipes = Recipe.all
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = RecipeIngredient.where(recipe_id: params[:id])
    @instructions = @recipe.instructions.split("\\n")
  end

  private

  def ingredients_collection
    Ingredient.all.map { |ingredient| [ingredient.id, ingredient.name] }
  end

  def find_recipes(ids)
    recipes = []
    Recipe.all.each do |recipe|
      recipes << recipe if id_in_recipe?(recipe, ids)
    end
    recipes
  end

  def id_in_recipe?(recipe, ids)
    recipe_ids = recipe.recipe_ingredients.map { |recipe_ingredient| recipe_ingredient.ingredient_id.to_s }
    recipe_ids << ""
    arr = []
    ids.each do |id|
      if recipe_ids.include?(id)
        arr << true
      else
        arr << false
      end
    end
    arr.all?
  end
end
