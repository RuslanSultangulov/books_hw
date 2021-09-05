# frozen_string_literal: true

class Book < ApplicationRecord
  has_many :authors, through: :book_author
  belongs_to :publisher
  validates :name, uniqueness: true
end
