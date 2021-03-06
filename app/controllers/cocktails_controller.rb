class CocktailsController < ApplicationController
before_action :set_cocktail, only: [:show, :edit, :update, :destroy]



  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new 
  end  
  
  def show    
  end
  
  
  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      redirect_to new_cocktail_path
    end  
  end

  def edit
  end

  def update
    @cocktail = Cocktail.update(cocktail_params)
    redirect_to new_cocktail_path
  end

  def destroy
    @cocktail.delete
    redirect_to cocktails_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)  
  end

end
