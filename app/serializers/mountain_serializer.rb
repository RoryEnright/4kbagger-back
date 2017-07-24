class MountainSerializer < ActiveModel::Serializer
  attributes :id, :name, :height, :hikes
  def hikes
    object.hikes.pluck(:id) & current_user.hikes.pluck(:id)
  end
end
