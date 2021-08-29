FactoryBot.define do
  factory :skill do
    name { %w[Ruby JS SQL Elixir Java].sample }
  end
end
