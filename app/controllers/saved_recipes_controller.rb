class SavedRecipesController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @saved_recipe = SavedRecipe.find_or_create_by(recipe: @recipe, user: current_user) do |saved_recipe|
      if params[:attribute].present?
        saved_recipe.toggle!(params[:attribute])
      end
    end
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
end
