class TrackedHistoriesController < ApplicationController
  before_filter :set_tracked_url

  def destroy
    @tracked_history = TrackedHistory.find(params[:id])
    @tracked_history.destroy
 
    redirect_to destination_link_tracked_url_path(@tracked_url.destination_link, @tracked_url)
  end

  private

  def set_tracked_url
    @tracked_url = TrackedUrl.find(params[:tracked_url_id])
  end
end
