# frozen_string_literal: true

class BookShop < ApplicationRecord
  has_many :publishers, through: :bookshop_publishers
  validates :name, uniqueness: true
  scope :where_you_can_buy, lambda { |book_name = 'book 1'|
                              joins("join book_shop_publishers
                                     on book_shops.id = book_shop_publishers.book_shop_id
                                     join publishers on book_shop_publishers.publisher_id = publishers.id
                                     join books on publishers.id = books.publisher_id")
                                .where("books.name = '#{book_name}'")
                            }
end
