require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'Create a new category with no name' do
    new_category = Category.create()
    expect(new_category).to_not be_valid
  end

  it 'Create a new category with name "nil"' do
    new_category = Category.create(name: nil)
    expect(new_category).to_not be_valid
  end

  it 'Create a new category with a name that already exists' do
    new_category_01 = Category.create(name: "Smartphones")
    new_category_02 = Category.create(name: "Smartphones")
    expect(new_category_02).to_not be_valid
  end
end
