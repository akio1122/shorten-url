class DestinationLinksController < ApplicationController
  def index
    @destination_links = DestinationLink.all
  end

  def show
    @destination_link = DestinationLink.find(params[:id])
  end
  
  def new
    @destination_link = DestinationLink.new
  end

  def edit
    @destination_link = DestinationLink.find(params[:id])
  end

  def create
    @destination_link = DestinationLink.new(destination_link_params)
 
    if @destination_link.save
      redirect_to @destination_link
    else
      render 'new'
    end
  end
 
  def update
    @destination_link = DestinationLink.find(params[:id])
 
    if @destination_link.update(destination_link_params)
      redirect_to @destination_link
    else
      render 'edit'
    end
  end
 
  def destroy
    @destination_link = DestinationLink.find(params[:id])
    @destination_link.destroy
 
    redirect_to destination_links_path
  end
 
  private
    def destination_link_params
      params.require(:destination_link).permit(:url)
    end
end
