class Player < ApplicationRecord
  has_and_belongs_to_many :albums

  validates :name, presence: true, allow_blank: false
end
