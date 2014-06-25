# == Schema Information
#
# Table name: phones
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  network    :string(255)
#  features   :string(255)
#  weight     :string(255)
#  size       :string(255)
#  akkum      :string(255)
#  limited    :boolean
#  notes      :text
#  photo_url  :string(255)
#  created_at :datetime
#  updated_at :datetime
#  year       :integer
#

require 'test_helper'

class PhoneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
