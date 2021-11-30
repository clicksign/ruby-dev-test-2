FactoryBot.define do
  factory :album_player do
    album { build(:album) }
    player { build(:player) }
  end
end
