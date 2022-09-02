class Album < ApplicationRecord    
  has_many :albums_players, dependent: :destroy
  has_many :players, through: :albums_players
  
  validates :name, presence: true, uniqueness: true
  validates :players, presence: true
end
