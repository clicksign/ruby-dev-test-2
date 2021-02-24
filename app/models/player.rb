class Player < ApplicationRecord
  has_and_belongs_to_many :albums

  accepts_nested_attributes_for :albums, :reject_if => proc {|a| a['name'].blank?}

  validates_presence_of :name
end
