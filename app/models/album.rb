class Album < ApplicationRecord
  has_many :account
  validates_presence_of :name
end
