require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'Create a new product with no name' do
    new_product = Product.create(description: "description", sku: "SKU")
    expect(new_product).to_not be_valid
  end

  it 'Create a new product with no description' do
    new_product = Product.create(name: "name", sku: "SKU")
    expect(new_product).to_not be_valid
  end

  it 'Create a new product with no sku' do
    new_product = Product.create(name: "name", description: "description")
    expect(new_product).to_not be_valid
  end

  it 'Update price and stock of a product' do
    new_product = Product.create(name: "name", description: "description", sku: "SKU")
    new_product.update(price: 10)
    expect(new_product).to be_valid
  end
end
