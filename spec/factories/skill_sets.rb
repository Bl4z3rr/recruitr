FactoryBot.define do
  factory :skill_set do
    association :source, factory: :candidate
  end
end
