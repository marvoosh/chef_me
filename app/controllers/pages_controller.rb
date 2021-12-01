class PagesController < ApplicationController
  layout 'light', only: [:home]
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def index
    @recipes = current_user.recipes
    @saved_recipes = current_user.saved_recipes
  end

  def search
    if params[:query].present?
      @ingredients = Ingredient.search_by_name(params[:query])
    else
      @ingredients = Ingredient.all
    end
  end

  def favourite
    @favourite_recipes = current_user.saved_recipes.where(favourite: true)
  end

  def completed
    @completed_recipes = current_user.saved_recipes.where(completed: true)
  end
end
