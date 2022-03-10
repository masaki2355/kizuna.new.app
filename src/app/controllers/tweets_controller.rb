class TweetsController < ApplicationController
  def index
    @schoolname = current_user.schoolname
    @tweets = Tweet.all.order(created_at: :desc).page(params[:page]).per(10)
  end

  def show
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(params.require(:tweet).permit(:schoolyear, :event).merge(user_id: current_user.id))

    if @tweet.save
      redirect_to tweets_path(@tweet)
    else
      render :new
    end
  end

  def edit
  end
end
