class SplitAlbum < ApplicationRecord
    belongs_to :album, class_name: 'Album', foreign_key: 'albums_id'
    belongs_to :player, class_name: 'Player', foreign_key: 'players_id'
end
