class Band < ActiveRecord::Base
  attr_accessible :name, :photo
  validates :name, :presence => true

  has_many :artists
  has_many :recordings
  has_many :songs, :through => :recordings
end