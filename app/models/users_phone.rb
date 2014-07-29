# == Schema Information
#
# Table name: users_phones
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  phone_id      :integer
#  condition     :integer
#  date          :string(255)
#  imei          :string(255)
#  sw            :string(255)
#  menu_lang     :string(255)
#  keyboard_lang :string(255)
#  made_in       :string(255)
#  calls_time    :string(255)
#  phone_type    :string(255)
#  notes         :text
#  box           :boolean
#  box_imei      :boolean
#  charger       :string(255)
#  sim           :boolean
#  usb           :boolean
#  cradle        :boolean
#  another_staff :string(255)
#  selling       :boolean
#  created_at    :datetime
#  updated_at    :datetime
#

class UsersPhone < ActiveRecord::Base
  belongs_to :user
  belongs_to :phone

  has_many :pictures, as: :imageable
end
