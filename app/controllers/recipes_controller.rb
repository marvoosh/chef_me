class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    # @ingredients = ingredients_collection
    # @ingredient_ids = params[:query][:ingredient_ids]
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def ingredients_collection
    Ingredient.all.map { |ingredient| [ingredient.id, ingredient.name] }
  end
end
