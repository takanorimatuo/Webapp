class FoodsController < ApplicationController

  def index
    @foods = Food.all.page(params[:page]).per(6).order("id desc")
  end
  
  def new
    @food = Food.new
  end

  def show
    @foods = Food.all.page(params[:page]).per(4).order("id desc")
  end

  def create
    Food.create(food_params)
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    food = Food.find(params[:id])
    food.update(food_params)
  end



private
def food_params
  params.require(:food).permit(:product, :text, :image, :price)
end
end
