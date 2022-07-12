FactoryBot.define do
  factory :album do
    name { Faker::Music.album }

    trait :with_player do
      players { [create(:player)] }
    end
  end
end
