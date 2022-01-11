FactoryBot.define do
  factory :album_player do
    player { create(:player) }
    album { create(:product) }
  end
end
