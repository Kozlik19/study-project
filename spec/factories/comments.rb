# frozen_string_literal: true

# Фактори бот для комментариев
FactoryBot.define do
  factory :comment do
    body { Faker::Lorem.sentence }
    article
    user
  end
end