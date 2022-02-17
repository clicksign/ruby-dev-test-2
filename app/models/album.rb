class Album < ApplicationRecord
  has_many :record_companies
  has_many :players, through: :record_company

  validates_presence_of :name
end
