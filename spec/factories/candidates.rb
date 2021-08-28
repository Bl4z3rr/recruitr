FactoryBot.define do
  factory :candidate do
    name { 'Liam' }
    surname { 'Lama' }
    email { 'l.lama@mail.com' }
    development_type { 'Backend' }
    seniority_level { 'Senior' }
  end
end
