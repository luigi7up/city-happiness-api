class Happiness < ApplicationRecord

  validates :device_id, :feeling_like, :lat, :lng, presence: true

  reverse_geocoded_by :lat, :lng do |obj, results|
    if geo = results.first
      obj.city    = geo.city
      obj.country = geo.country_code
      obj.postal_code = geo.postal_code
    end
  end

  after_validation :reverse_geocode

  scope :top_happiest_cities, -> {
    select('avg(feeling_like) as feeling, city').group(:city).order("feeling DESC")
  }

  scope :top_happy_countries, -> {
    group_by(:country)
  }

  scope :top_happy_postal_code, -> {
    group_by(:postal_code)
  }


end
