FactoryBot.define do
  factory :player do
    name { Faker::Music::RockBand.name }
  end
end
