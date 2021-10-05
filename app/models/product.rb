class Product < ApplicationRecord
  has_and_belongs_to_many :categories

  has_many :order_items
  has_many :orders, through: :order_items

  validates :name, presence: true, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  validates_uniqueness_of :name
  validates :description, presence: true
  validates :sku, presence: true
end
