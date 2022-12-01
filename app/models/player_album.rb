# frozen_string_literal: true
class PlayerAlbum < ApplicationRecord
  # Association
  belongs_to :player
  belongs_to :album

  # Validations
  validates :player_id, uniqueness: { scope: :album_id }
end
