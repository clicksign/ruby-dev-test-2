# annotate
# ---
# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# ---
class Album < ApplicationRecord
  # Validates
  # ---
  validates_presence_of :name

  # Associations
  # ---
  has_many :player_albums, dependent: :destroy
  has_many :players, through: :player_albums
end
