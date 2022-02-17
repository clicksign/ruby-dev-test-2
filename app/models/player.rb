class Player < ApplicationRecord
  has_many :record_companies
  has_many :albums, through: :record_companies

  validates_presence_of :name
end
