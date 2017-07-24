class HikeSerializer < ActiveModel::Serializer
  attributes :id, :when, :trail, :duration, :note, :user_id, :mountain_id
end
