class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_recipe, only: %i[edit update destroy]

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

  def destroy
    authorize @recipe
    @recipe.destroy
    redirect_to recipes_path, notice: 'Recipe was successfully deleted.'
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :description, :ingredients, :category, :cuisine, :prep_time, :total_time, :difficulty, :servings, :directions)
  end
end
