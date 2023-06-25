class Album < ApplicationRecord
  has_many :authorships
  has_many :players, through: :authorships 

  validates :name, presence: true
  validates :authorships, presence: true
end
