class Happiness < ApplicationRecord

  validates :device_id, :feeling_like, :lat, :lng,
            :city, :country, :neighborhood, presence: true


  scope :top_happy_cities, -> {
    where()
  }
end
