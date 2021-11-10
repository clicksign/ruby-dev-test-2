class Album < ApplicationRecord
  has_many :authorships
  has_many :players, through: :authorships

  validates_presence_of :name
end
