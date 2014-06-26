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

class Phone < ActiveRecord::Base
  has_many :users_phones
  has_many :owners, through: :users_phones, source: :user
end
