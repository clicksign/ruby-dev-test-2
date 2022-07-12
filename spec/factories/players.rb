FactoryBot.define do
  factory :player do
    name { Faker::Music.band }

    trait :with_album do
      albums { [create(:album)] }
    end
  end
end
