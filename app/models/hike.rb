# frozen_string_literal: true
class Hike < ApplicationRecord
  belongs_to :user, inverse_of: :hikes
  belongs_to :mountain, inverse_of: :hikes
end
