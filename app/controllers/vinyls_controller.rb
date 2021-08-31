class VinylsController < ApplicationController
  def show
    @vinyl = Vinyl.find(params[:id])
  end
end
