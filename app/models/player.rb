class Player < ApplicationRecord
  has_many :player_albums, dependent: :restrict_with_error
  has_many :albums, through: :player_albums

  validates :name,
            presence: true,
            length: { maximum: 255 },
            uniqueness: { case_sensitive: false }
end
