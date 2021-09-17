class Album < ApplicationRecord
  has_many :split_albums, class_name: 'SplitAlbum', foreign_key: 'albums_id'
  has_many :players, through: :split_albums, class_name: 'Player'

  validates :name, :player_id, presence: {message: "Cannot be blank"}
end
