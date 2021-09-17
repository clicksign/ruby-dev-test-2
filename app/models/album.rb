class Album < ApplicationRecord
  has_many :split_albums, class_name: 'SplitAlbum', foreign_key: 'albums_id'
  has_many :players, through: :split_albums, class_name: 'Player'

  validates :name, :player_id, presence: {message: "Cannot be blank"}

  after_create :register_split_album


  private

  def register_split_album
    split_album_players = self.player_id
    player_ids = []
    split_album_players['artists'].each do |split_album_player|
      player_ids << split_album_player['id']
    end
    player_ids.each do |player_id|
      SplitAlbum.create(albums_id: self.id, players_id: player_id)
    end
  end
end
