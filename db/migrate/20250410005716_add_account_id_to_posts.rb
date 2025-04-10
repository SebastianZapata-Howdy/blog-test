# frozen_string_literal: true

class AddAccountIdToPosts < ActiveRecord::Migration[7.2]
  def change
    add_reference :posts, :account, null: false, foreign_key: true
  end
end
