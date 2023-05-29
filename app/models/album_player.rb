# frozen_string_literal: true

class AlbumPlayer < ApplicationRecord
  belongs_to :album
  belongs_to :player

  validates_presence_of :album, :player
  validates_uniqueness_of :player, scope: :album
end
