class Api::V1::BeersController < ApplicationController
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
  def update
    @beer = Beer.find(params[:id])
    @beer.update(
                name: params[:name],
                style: params[:style],
                alcohol: params[:alcohol]
                )
    render :show
  end

  def destroy
    @beer = Beer.find(params[:id])
    @beer.destroy
    render json: {message: 'Beer Destroyed'}, status: 200
  end
end
