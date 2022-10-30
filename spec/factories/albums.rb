# frozen_string_literal: true

FactoryBot.define do
  factory :album do
    sequence(:name) { |n| "Album-#{n}" }
    player
  end
end
