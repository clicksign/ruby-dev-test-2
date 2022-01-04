
class AlbumPlayer < ApplicationRecord
    # Recebe a chave estrangeira das respectivas tabelas
    belongs_to :album
    belongs_to :player
  end