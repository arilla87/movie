class PeliculasController < ApplicationController
  def index
    @pelicula = Pelicula.all
  end

  def show
    @pelicula = Pelicula.find(params[:id])
  end

  def new
    @pelicula = Pelicula.new
  end
end
