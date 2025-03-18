# frozen_string_literal: true

# Добавление статуса комментариям
class AddStatusToComments < ActiveRecord::Migration[7.1]
  def change
    add_column :comments, :status, :string
  end
end
