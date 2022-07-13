require 'faker'

FactoryBot.define do
  factory :valid_album, class: Album do
    name { Faker::Name.name }
    players { [create(:valid_player)] }
  end
  factory :album_without_players, class: Album do
    name { Faker::Name.name }
  end
  factory :album_without_name, class: Album do
    name { '' }
  end
end
