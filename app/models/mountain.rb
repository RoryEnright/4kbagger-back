# frozen_string_literal: true
class Mountain < ApplicationRecord
  has_many :users, through: :hikes
  has_many :hikes
end
