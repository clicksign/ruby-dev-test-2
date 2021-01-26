class Player < ApplicationRecord
  has_many :participations
  # Achei melhor usar has_many through ao invés de has_and_belongs_to_many devido a flexibilidade, com o
  # com o through podemos adicionar mais informações ao model Participation no futuro, como por exeplo se é
  # player principal do album ou se é uma participação especial por exemplo, isso de forma muito mais simples
  has_many :albums, through: :participations

  validates_presence_of :name
end
