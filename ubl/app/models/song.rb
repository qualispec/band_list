class Song < ActiveRecord::Base
  attr_accessible :name, :artist_id
  validates :name, :presence => :true
  validates :name, :uniqueness => :true

  belongs_to :artist

  has_many :recordings
  has_many :bands, :through => :recordings
end