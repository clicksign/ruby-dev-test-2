# frozen_string_literal: true

class AlbumPlayer < ApplicationRecord
  belongs_to :player, optional: false
  belongs_to :album, optional: false

  after_destroy :destroy_album

  private

  ##
  # Destroy the album if it's not used by any other player
  def destroy_album
    album.destroy if album.players.empty?
  end
end
