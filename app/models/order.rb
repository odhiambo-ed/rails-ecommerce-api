class Order < ApplicationRecord
  # validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :product_id, presence: true
  validates :user_id, presence: true

  belongs_to :product
  belongs_to :user
end
