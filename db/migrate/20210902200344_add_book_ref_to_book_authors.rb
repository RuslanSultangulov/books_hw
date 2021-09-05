# frozen_string_literal: true

class AddBookRefToBookAuthors < ActiveRecord::Migration[6.1]
  def change
    add_reference :book_authors, :author, null: false, foreign_key: true
    add_reference :book_authors, :book, null: false, foreign_key: true
  end
end
