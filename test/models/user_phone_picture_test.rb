# == Schema Information
#
# Table name: user_phone_pictures
#
#  id                   :integer          not null, primary key
#  user_phone_id        :integer
#  picture_file_name    :string(255)
#  picture_content_type :string(255)
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#  created_at           :datetime
#  updated_at           :datetime
#

require 'test_helper'

class UserPhonePictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
