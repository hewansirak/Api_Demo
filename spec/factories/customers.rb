FactoryBot.define do
  factory :customer do
    code { Faker::Alphanumeric.alpha(number: 6) }
    name { Faker::Name.name }
  end
end
