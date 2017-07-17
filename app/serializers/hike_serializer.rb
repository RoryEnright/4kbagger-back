class HikeSerializer < ActiveModel::Serializer
  attributes :id, :when, :trail, :duration, :note
end
