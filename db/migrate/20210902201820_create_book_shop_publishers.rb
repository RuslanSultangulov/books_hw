# frozen_string_literal: true

class CreateBookShopPublishers < ActiveRecord::Migration[6.1]
  def change
    create_table :book_shop_publishers do |t|
      t.references :book_shop, null: false, foreign_key: true
      t.references :publisher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
