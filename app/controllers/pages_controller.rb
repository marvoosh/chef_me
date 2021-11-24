class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def index
    @recipes = current_user.recipes
  end

  def search
    if params[:query].present?
      @ingredients = Ingredient.search_by_name(params[:query])
    else
      @ingredients = Ingredient.all
    end
  end
end
