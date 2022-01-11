FactoryBot.define do
  factory :player do
    sequence(:name) { |n| "Category #{n}" }
  end
end
