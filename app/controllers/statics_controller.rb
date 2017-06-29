class StaticsController < ApplicationController

  def index
  	@pelicula = Pelicula.all
  end

  def about
  end

  def show
  	@pelicula = Pelicula.find(params[:id])
  end
end
