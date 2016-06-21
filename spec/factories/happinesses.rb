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

FactoryGirl.define do
  factory :happinesses do
    device_id ""
    feeling_like ""
    lat ""
    lng ""
    city ""
    country ""
    neighborhood "MyString"
  end
end
