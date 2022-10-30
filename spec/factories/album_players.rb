# frozen_string_literal: true

FactoryBot.define do
  factory :album_player do
    album
    player
  end
end
