class PlayerAlbum < ApplicationRecord
  belongs_to :player, class_name: :Player
  belongs_to :album, class_name: :Album
end
