class Album < ApplicationRecord
  # belongs_to :player
  
  has_many :partnerships, dependent: :destroy, class_name: "AlbumPlayer"
  has_many :players, through: :partnerships

  validates_presence_of :name
end
