class DrinksController < ApplicationController

  def index
    @drinks = Drink.all.page(params[:page]).per(6).order("id desc")
  end
  
  def new
    @drink = Drink.new
  end

  def show
    @drinks = Drink.all.page(params[:page]).per(4).order("id desc")
  end

  def create
    Drink.create(drink_params)
  end

  def destroy
    drink = Drink.find(params[:id])
    drink.destroy
  end

  def edit
    @drink = Drink.find(params[:id])
  end

  def update
    drink = Drink.find(params[:id])
    drink.update(drink_params)
  end

private
def drink_params
  params.require(:drink).permit(:product, :text, :image, :price)
end

  

end
