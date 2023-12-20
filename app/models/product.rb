class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }, format: { with: /\A\d+(\.\d{1,2})?\z/, message: "should be a valid decimal number with up to two decimal places" }
  validates :company_id, presence: true
  validates :category_id, presence: true

  has_many :orders, dependent: :destroy

  belongs_to :company
  belongs_to :category
end
