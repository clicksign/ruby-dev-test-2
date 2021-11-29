# frozen_string_literal: true

class AlbumPlayer < ApplicationRecord
  belongs_to :player
  belongs_to :album
end
