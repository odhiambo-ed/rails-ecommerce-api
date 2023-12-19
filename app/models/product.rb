class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :company_id, presence: true
  validates :category_id, presence: true

  belongs_to :company
  belongs_to :category
end
