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

require 'rails_helper'

RSpec.describe Happiness, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
