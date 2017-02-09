class TrackedUrlsController < ApplicationController
  before_filter :set_destination_link

  def index
    @tracked_urls = @destination_link.tracked_urls
  end

  def show
    @tracked_url = TrackedUrl.find(params[:id])
    @tracked_histories = @tracked_url.tracked_histories
  end
  
  def new
    @tracked_url = @destination_link.tracked_urls.build(tracked_url_params)
  end

  def edit
    @tracked_url = TrackedUrl.find(params[:id])
  end

  def create
    @tracked_url = @destination_link.tracked_urls.create(tracked_url_params)
    redirect_to destination_link_path(@destination_link)
  end
 
  def destroy
    @tracked_url = TrackedUrl.find(params[:id])
    @tracked_url.destroy
 
    redirect_to destination_link_path(@destination_link)
  end
 
  private

  def set_destination_link
    @destination_link = DestinationLink.find(params[:destination_link_id])
  end

  def tracked_url_params
    params.require(:tracked_url).permit(:url)
  end
end
