# frozen_string_literal: true

# Фактори бот для статей
FactoryBot.define do
  factory :article do
    title { Faker::Lorem.sentence }
    body { Faker::Lorem.paragraph }
    user
  end
end
