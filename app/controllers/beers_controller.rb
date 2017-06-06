class BeersController < ApplicationController
  def index
    @beer = Beer.all
  end
  def create
    @beer = Beer.create(
                        name: params[:name],
                        style: params[:style],
                        alcohol: params[:alcohol]
                        )
    render :show
  end
  def show
    @beer = Beer.find(params[:id])
  end
end
