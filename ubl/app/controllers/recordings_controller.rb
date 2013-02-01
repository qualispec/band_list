class RecordingsController < ApplicationController

  def index
    @recordings = Recording.all
  end

  def destroy
    @band = Band.find(params[:band_id])
    Recording.where(:song_id => params[:id], :band_id => params[:band_id]).destroy_all

    redirect_to @band
  end
end
