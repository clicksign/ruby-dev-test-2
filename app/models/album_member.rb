class AlbumMember < ApplicationRecord
  belongs_to :album
  belongs_to :player
end
