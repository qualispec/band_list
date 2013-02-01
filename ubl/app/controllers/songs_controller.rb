class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def create
    @band = Band.find(params[:band_id])
    @song = Song.new(:name => params[:song])
    @song.save
    @band.songs << @song
    redirect_to @band
  end

  def destroy
    @band = Band.find(params[:band_id])
    Song.find(params[:id]).destroy

    redirect_to @band
  end
end
