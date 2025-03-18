# frozen_string_literal: true

# Фактори бот для пользователей
FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
