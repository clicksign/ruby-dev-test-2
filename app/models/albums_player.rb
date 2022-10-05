class AlbumsPlayer < ApplicationRecord
  belongs_to :album
  belongs_to :player
end
