class Company < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :products
end
