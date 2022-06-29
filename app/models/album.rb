class Album < ApplicationRecord
  belongs_to :player, optional: true
  has_many :releases
  has_many :players, through: :releases

  validates :players, presence: true
  validates_presence_of :name
end
