# frozen_string_literal: true

class CreateApiKeys < ActiveRecord::Migration[7.1]
  def change
    create_table :api_keys do |t|
      t.string :key, null: false

      t.timestamps
    end

    add_index :api_keys, :key, unique: true
  end
end
