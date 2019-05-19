class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    if @cocktail.update(cocktails_params)
      redirect_to cocktails_path
    else
      render :new
    end
  end

  def create
    @cocktail = Cocktail.create(cocktails_params)
    redirect_to cocktails_path
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def cocktails_params
    params.require(:cocktail).permit(:name, :photo)
  end

end
