class Category < ApplicationRecord
  has_and_belongs_to_many :products
  validates :name, presence: true, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  validates_uniqueness_of :name
end
