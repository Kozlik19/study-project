# frozen_string_literal: true

# Добавление статуса статьям
class AddStatusToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :status, :string
  end
end
