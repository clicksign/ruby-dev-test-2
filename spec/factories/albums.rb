FactoryBot.define do
  factory :album do
    sequence(:name) { |n| "Album-#{n}" }
    player
  end
end