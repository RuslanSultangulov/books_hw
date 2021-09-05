# frozen_string_literal: true

class CreateBookAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :book_authors, &:timestamps
  end
end
