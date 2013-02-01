class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end


  def create
    @band = Band.find(params[:band_id])
    @artist = Artist.new(:name => params[:artist])
    @artist.save

    @band.artists << @artist

    redirect_to @band
  end

  def show
    @artists = Artist.all
  end

end
