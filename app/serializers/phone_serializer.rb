class PhoneSerializer < ActiveModel::Serializer
  attributes :id, :name, :network, :features, :weight, :size, :akkum, :limited, :notes, :photo_url
end
