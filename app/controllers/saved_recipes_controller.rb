class SavedRecipesController < ApplicationController
  def create
    @saved_recipe = SavedRecipe.new
    @recipe = Recipe.find(params[:recipe_id])
    @saved_recipe.recipe = @recipe
    @saved_recipe.user = current_user
    @saved_recipe.save
    redirect_to recipes_path
  end

  def destroy
    @saved_recipe = SavedRecipe.find(params[:id])
    @saved_recipe.destroy
    redirect_to recipes_path
  end

  def update
    @saved_recipe = SavedRecipe.find(params[:id])
    @saved_recipe.toggle!(params[:attribute])
    redirect_to recipes_path
  end
end
