class Album < ApplicationRecord
  belongs_to :player  # TO-DO: remove Player references on Album
  has_many :partnerships, foreign_key: 'album_id', class_name: 'AlbumPlayer'
  has_many :players, through: :partnerships

  validates_presence_of :name
end
