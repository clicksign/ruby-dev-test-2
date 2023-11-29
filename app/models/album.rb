class Album < ApplicationRecord
  has_and_belongs_to_many :players

  validates :name, :players, presence: true
end
