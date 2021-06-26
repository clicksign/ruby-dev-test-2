FactoryBot.define do
  factory :player do
    name { Faker::Music::Hiphop.artist }
  end
end