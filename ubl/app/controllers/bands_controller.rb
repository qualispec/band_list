class BandsController < ApplicationController

  def index
    @bands = Band.all
    @band = Band.new
  end

  def show
    @band = Band.find(params[:id])
    @artists = Artist.all
  end

  def create
    photo_blob = params[:band].delete(:photo).read

    @band = Band.new(params[:band])
    @band.photo = photo_blob

    @band.save

    redirect_to @band
  end

  def update
    @band = Band.find(params[:band_id])
    @artist = Artist.find(params[:artist_id])

    @artist.band = @band
    @artist.save

   redirect_to @band
 # render :json => [params, @band, @artist]
  end

  def photo
    band = Band.find(params[:band_id])
    send_data band.photo, :type => 'image/jpg', :disposition => 'inline'
  end

end
