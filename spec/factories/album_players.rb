FactoryBot.define do
  factory :album_player do
    it { should belong_to(:album) }
    it { should belong_to(:player) }
  end
end
