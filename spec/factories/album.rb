FactoryBot.define do
  factory :album do
    name { "Madonna & Shakira Album" }

    factory :album_with_players do

      transient do
        players_count { 2 }
      end

      after(:build) do |job, evaluator|
        (0...evaluator.players_count).each do |i|
          job.players << FactoryBot.create(:player)
        end
      end
    end

  end
end