class DosesController < ApplicationController

  def new
    @dose = Dose.new
    # @cocktail = Cocktail.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(doses_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit

    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:id])

  end

  def update
    @cocktail = Cocktail.find(params[:cocktail_id])
    # @dose = Dose.new(doses_params)
    @dose = Dose.find(params[:id])
    @dose.cocktail = @cocktail
    if @dose.update(doses_params)
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    @cocktail = @dose.cocktail
    redirect_to cocktail_path(@cocktail)
  end


  private

  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
