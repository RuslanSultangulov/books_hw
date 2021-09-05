# frozen_string_literal: true

class RemoveStringOfBookShop < ActiveRecord::Migration[6.1]
  def change
    remove_column :book_shops, :string
  end
end
