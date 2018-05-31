class AdvertisementsController < ApplicationController
  def index
    @ads = Advertisement.all
  end

  def show
    @ads = Advertisement.find(params[:id])
  end

  def new
    @ads = Advertisement.new
  end

  def create
    @ads = Advertisement.new
    @ads.title = params[:advertisement][:title]
    @ads.copy = params[:advertisement][:copy]
    @ads.price = params[:advertisement][:price]
    
    if @ads.save
      flash[:notice] = "Post was saved."
      redirect_to @ads
    else
      flash.now[:alert] = "There was an error saving the post. Please try again."
      render :new
    end
  end
end
