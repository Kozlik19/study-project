# frozen_string_literal: true

# Добавление дейвайса пользователю для аутентификации
class AddDeviseToUsers < ActiveRecord::Migration[7.1]
  def self.up
    change_table :users do |t|
      ## Database authenticatable
      t.string :encrypted_password, null: false, default: ''

      # Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :last_sign_in_at

      # Uncomment below if timestamps were not included in your original model.
      # t.timestamps null: false
    end

    add_index :users, :email, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.
    raise ActiveRecord::IrreversibleMigration
  end
end
