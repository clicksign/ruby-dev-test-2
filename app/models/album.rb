# frozen_string_literal: true

class Album < ApplicationRecord
  has_and_belongs_to_many :players, join_table: 'albums_players'

  validates_presence_of :name
end
