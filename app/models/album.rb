class Album < ApplicationRecord
    has_many :players_albums
    has_many :players, through: :players_albums
end