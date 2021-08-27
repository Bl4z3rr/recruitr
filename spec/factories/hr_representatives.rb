# frozen_string_literal: true

FactoryBot.define do
  factory :hr_representative do
    name { 'Bob' }
    surname { 'Hr' }
    email { 'hr.bob@mail.com' }
  end
end
