# frozen_string_literal: true

class Player < ApplicationRecord
  has_and_belongs_to_many :albums, join_table: 'albums_players'

  validates_presence_of :name
end
