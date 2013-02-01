class Recording < ActiveRecord::Base
  attr_accessible :band_id, :song_id

  belongs_to :song
  belongs_to :band
end