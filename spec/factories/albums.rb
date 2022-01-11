FactoryBot.define do
  factory :album do
    sequence(:name) { |n| "Category #{n}" }
  end
end
