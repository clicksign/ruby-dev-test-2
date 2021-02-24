class Album < ApplicationRecord
  has_and_belongs_to_many :players

  accepts_nested_attributes_for :players, :reject_if => proc {|a| a['name'].blank?}

  validates_presence_of :name
end
