FactoryBot.define do
  factory :item do
    code { Faker::Alphanumeric.alpha(number: 6) }
    name { Faker::Name.name }
  end
end
