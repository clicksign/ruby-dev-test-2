class Album < ApplicationRecord
  has_and_belongs_to_many :players

  validates :name, presence: true, allow_blank: false
  validates :players, length: { minimum: 1 }
end
