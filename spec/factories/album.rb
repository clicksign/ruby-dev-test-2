# frozen_string_literal: true

FactoryBot.define do
  factory :album do
    name { Faker::Music.album }
  end
end
