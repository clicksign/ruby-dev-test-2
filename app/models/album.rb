class Album < ApplicationRecord
  belongs_to :player, optional: true  # TO-DO: remove Player references on Album
  has_many :partnerships, class_name: 'AlbumPlayer', dependent: :destroy
  has_many :players, through: :partnerships

  validates :name, presence: true
end
