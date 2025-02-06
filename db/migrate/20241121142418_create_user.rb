# frozen_string_literal: true

# Создание пользователя
class CreateUser < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, null: false

      t.timestamps
    end
  end
end
