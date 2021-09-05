# frozen_string_literal: true

class Publisher < ApplicationRecord
  has_many :books
  has_many :book_shops, through: :bookshop_publishers
  validates :name, uniqueness: true
end
