class Place < ApplicationRecord
  has_many :listings, dependent: :destroy

  validates :google_place_id, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
  
end
