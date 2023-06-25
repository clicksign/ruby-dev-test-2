class Authorship < ApplicationRecord
  belongs_to :player
  belongs_to :album
end
