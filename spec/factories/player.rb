FactoryBot.define do
  factory :player do
    name { Faker::Name.first_name }
  end
end
