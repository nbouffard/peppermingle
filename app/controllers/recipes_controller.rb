class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_recipe, only: %i[edit update]
  def index
    @recipes = policy_scope(Recipe)
  end

  def edit
    authorize @recipe
  end

  def update
    authorize @recipe
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe), notice: "Recipe updated successfully."
    else
      render :edit
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(
      :title,
      :description,
      :ingredients,
      :category,
      :cuisine,
      :prep_time,
      :total_time,
      :servings,
      :difficulty
    )
  end
end
