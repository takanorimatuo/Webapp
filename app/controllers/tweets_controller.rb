class TweetsController < ApplicationController


  def index
    @tweets = Tweet.all.page(params[:page]).per(6).order("id desc")
  end

  def new
    @tweet = Tweet.new
  end

  def show
    @tweets = Tweet.all.page(params[:page]).per(4).order("id desc")
  end

  def create
    Tweet.create(tweet_params)
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
  end


private
def tweet_params
  params.require(:tweet).permit(:product, :text, :image)
end


end
