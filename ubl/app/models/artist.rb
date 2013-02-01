class Artist < ActiveRecord::Base
  attr_accessible :name, :band_id
  validates :name, :presence => true


  belongs_to :band
  has_many :songs
  has_many :recordings, :through => :band

end