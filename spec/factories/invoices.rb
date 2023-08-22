FactoryBot.define do
  factory :invoice do
    invoice_number { Faker::Alphanumeric.alpha(number: 6) }
    generated_on { Date.current }
    status { Invoice::APPROVED }
    customer
    total_price { nil }
  end
end
