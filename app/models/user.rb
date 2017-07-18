# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :mountains, through: :hikes
  has_many :hikes
end
