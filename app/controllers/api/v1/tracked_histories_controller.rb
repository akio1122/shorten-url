class Api::V1::TrackedHistoriesController < ApplicationController

  before_filter :get_tracked_url

  def create
    @tracked_history = @tracked_url.tracked_histories.create(ip_address: params[:ip_address])
    render :json => @tracked_history, :status => 200
  end

  def index
    @tracked_histories = @tracked_url.tracked_histories
    render :json => @tracked_histories.to_json , :status => 200
  end

  private

  def get_tracked_url
    @tracked_url = TrackedUrl.find(params[:tracked_url_id])
  end
end
