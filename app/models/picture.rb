# == Schema Information
#
# Table name: pictures
#
#  id                   :integer          not null, primary key
#  imageable_id         :integer
#  picture_file_name    :string(255)
#  picture_content_type :string(255)
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#  created_at           :datetime
#  updated_at           :datetime
#  imageable_type       :string(255)
#
require "open-uri"

class Picture < ActiveRecord::Base
  has_attached_file :picture, styles: { original: "2000x2000>", thumb: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  belongs_to :imageable, polymorphic: true

  def url(style)
    self.picture.url(style)
  end

  def picture_from_url(url)
    self.picture = URI.parse(url)
  end
end
