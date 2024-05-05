class RecipesController < ApplicationController
  before_action :authenticate_user!, except: [:index,:show]

  def index
    @recipes = Recipe.all.order("created_at DESC")
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    else
      @recipe = Recipe.new(recipe_params)
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end



  private
   def recipe_params
    params.require(:recipe).permit(
      :name,:category_id,:kondate_id,:image
    )
   end

end
