class RecipesController < ApplicationController

  skip_before_action :authenticate_user!, only: :index
  def index
    @recipes = policy_scope(Recipe)
  end

  def new
    @recipe = Recipe.new
    authorize @recipe
  end

  def show
    @recipe = Recipe.find(params[:id])
    authorize @recipe
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    authorize @recipe
    if @recipe.save
      redirect_to @recipe, notice: 'Recipe was successfully created.'
    else
      render :new
    end
  end
end


private

def recipe_params
  params.require(:recipe).permit(:title, :description, :ingredients, :category, :cuisine, :prep_time, :total_time, :difficulty, :servings, :directions)

end
