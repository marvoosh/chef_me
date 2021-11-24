class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @ingredients = ingredients_collection
    if params[:query].present?
      @ingredient_ids = params[:query][:ingredient_ids]
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def ingredients_collection
    Ingredient.all.map { |ingredient| [ingredient.id, ingredient.name] }
  end
end
