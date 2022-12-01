# frozen_string_literal: true
class Player < ApplicationRecord
  has_many :albums

  validates_presence_of :name
end
