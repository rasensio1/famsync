class Item < ApplicationRecord
  validates :text, :category_id, presence: true
  has_one :category
end
