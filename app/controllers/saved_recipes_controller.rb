class SavedRecipesController < ApplicationController
  def create
    @saved_recipe = SavedRecipe.new
    @recipe = Recipe.find(params[:recipe_id])
    @saved_recipe.recipe = @recipe
    @saved_recipe.user = current_user
    if @saved_recipe.save
      redirect_to dashboard_path
    else
      redirect_to dashboard_path, notice: 'Already saved.'
    end
  end
end
