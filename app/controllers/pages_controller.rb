class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def search
    @ingredients = Ingredient.all
    # if params[:query].present?
    #   @ingredients =
  end
end
