class SavedRecipesController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @saved_recipe = SavedRecipe.find_or_create_by(recipe: @recipe, user: current_user)
    if params[:attribute].present?
      @saved_recipe.toggle!(params[:attribute])
    end
    @saved_recipe.recipe = @recipe
    @saved_recipe.user = current_user
    @saved_recipe.save
    render json: @saved_recipe
    # respond_to do |format|
    #   format.js
    # end
    # redirect_back(fallback_location: recipes_path)
  end

  def destroy
    @saved_recipe = SavedRecipe.find(params[:id])
    @saved_recipe.destroy
    redirect_back(fallback_location: recipes_path)
  end
end
