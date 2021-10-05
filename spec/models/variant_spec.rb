require 'rails_helper'

RSpec.describe Variant, type: :model do
  it 'Create a variant with a correct flux' do
    new_product = Product.create(name: "name", description: "description", sku: "SKU")
    color = Color.create(color_spec: "blue")
    size = Size.create(size_spec: "XXL")
    variant = Variant.create(stock: 10, color_id: color.id, size_id: size.id, product_id: 1)
    expect(variant).to be_valid
  end
end
