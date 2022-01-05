require 'faker'

FactoryBot.define do
  factory :player do
    name { Faker::Music.band }
  end
end