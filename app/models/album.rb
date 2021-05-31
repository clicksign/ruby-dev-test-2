class Album < ApplicationRecord
  has_many :album_members
  has_many :players, through: :album_members

  validates :name, :players, presence: true
end
