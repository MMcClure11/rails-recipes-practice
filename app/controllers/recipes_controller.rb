class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, description:, instructions:, cook_time:, :prep_time)
  end
end
