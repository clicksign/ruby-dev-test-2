
class AlbumPlayer < ApplicationRecord
    # Recebe a chave estrangeira das respectivas tabelas
    belongs_to :album
    belongs_to :player
    
    # faz a validação para evitar replica de chaves.
    validates :album_id, uniqueness: { scope: :player_id }
  end