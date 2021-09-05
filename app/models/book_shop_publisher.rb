# frozen_string_literal: true

class BookShopPublisher < ApplicationRecord
  belongs_to :bookshop, optional: true
  belongs_to :publisher, optional: true
end
