# frozen_string_literal: true

# Добавление статуса для комментариев
class AddStatusToComments < ActiveRecord::Migration[7.1]
  def change
    add_column :comments, :status, :string
  end
end
