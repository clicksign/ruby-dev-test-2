# frozen_string_literal: true

class Album < ApplicationRecord
  belongs_to :player

  validates_presence_of :name
end
