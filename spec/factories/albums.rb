FactoryBot.define do
  factory :album do
    name { Faker::Music.album }
    player { build(:player) } # TO-DO: remove Player references on Album
  end
end
