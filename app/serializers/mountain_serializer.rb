class MountainSerializer < ActiveModel::Serializer
  attributes :id, :name, :height
  has_one :user
  has_one :hike
end
