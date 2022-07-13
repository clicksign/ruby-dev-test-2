require 'faker'

FactoryBot.define do
  factory :valid_player, class: Player do
    name { Faker::File.file_name }
  end
  factory :player_without_name, class: Player do
    name { '' }
  end
end
