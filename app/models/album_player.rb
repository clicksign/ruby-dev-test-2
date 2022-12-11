class AlbumPlayer < ActiveRecord::Base
  belongs_to :album
  belongs_to :player
end