# frozen_string_literal: true

# Модель пользователя
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :trackable

  validates :email, presence: true
end
