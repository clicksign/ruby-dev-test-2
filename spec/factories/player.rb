# frozen_string_literal: true

FactoryBot.define do
  factory :player do
    name { Faker::Music.band }
  end
end
