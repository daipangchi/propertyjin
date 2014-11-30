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

FactoryGirl.define do
  factory :phone, :class => 'Phone' do
    sequence(:name) { |n| "siemens C#{n*5}" }
    network "GSM"
    features "Bluetooth"
    weight "95g"
    size "10x20x5"
    akkum "Li-ion"
    limited false
    notes "Notes"
    photo_url nil
    year { rand(1990..2006) }
  end
end