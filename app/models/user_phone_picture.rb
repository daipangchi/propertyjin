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

class UserPhonePicture < ActiveRecord::Base
  has_attached_file :picture, styles: { big: "2000x2000>", thumb: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
