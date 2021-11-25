class SavedRecipesController < ApplicationController
  def create
    @saved_recipe = SavedRecipe.new
    @recipe = Recipe.find(params[:recipe_id])
    @saved_recipe.recipe = @recipe
    @saved_recipe.user = current_user
    if @saved_recipe.save
      redirect_back fallback_location: '/'
    else
      redirect_back fallback_location: '/'
    end
  end

  def destroy
    @saved_recipe = SavedRecipe.find(params[:id])
    @saved_recipe.destroy
    redirect_back fallback_location: '/'
  end

  def update

  end

  private
    def saved_recipe_params
      params.require(:saved_recipe).permit(:id)
    end
end
