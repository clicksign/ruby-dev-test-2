# annotate
# ---
# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# ---
class Player < ApplicationRecord
  # Validates
  # ---
  validates_presence_of :name

  # Associations
  # ---
  has_many :player_albums, dependent: :destroy
  has_many :albums, through: :player_albums
end
