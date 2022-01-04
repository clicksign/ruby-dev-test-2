class Player < ApplicationRecord
  # Cria relacao N-N
  has_many :partnerships, dependent: :destroy, class_name: "AlbumPlayer"
  has_many :albums, through: :partnerships
  
  validates_presence_of :name
end