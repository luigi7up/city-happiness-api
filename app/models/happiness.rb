# == Schema Information
#
# Table name: happinesses
#
#  id           :integer          not null, primary key
#  device_id    :string
#  feeling_like :integer
#  lat          :float
#  lng          :float
#  city         :string
#  country      :string
#  neighborhood :string
#  postal_code  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Happiness < ApplicationRecord
  validates :device_id, :feeling_like, :lat, :lng, presence: true
  # validate :happiness_set


  def happiness_set
    if Happiness.where(device_id: device_id).where("created_at >= ?", Time.zone.now.beginning_of_day).count > 0
      errors.add(:base, "Happiness was set already today")
      # GOOGLE APIs guide
      errors.add(:message, "Happiness was set already today")
      errors.add(:code, "ERR_ONLY_ONE_A_DAY")
    end
  end

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

  scope :near_happynesses, ->(location, distance) {
      near(location, distance, order: :distance)
  }

  def happy_by_distance distance
    nearbys(distance).to_a.group_by{|f| f.feeling_like}
  end

end
