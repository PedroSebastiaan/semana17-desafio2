require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'Create a order with no user' do
    order = Order.create(number: "BO086327639", total: 10, state: "created")
    expect(order).to_not be_valid
  end

  it 'Create a order successfully' do
    user = User.create(email: "mail@mail.com", encrypted_password: "$2a$11$a5tJ1NJyGa0.0KyFhY6ehOi9LGDWSiZ492iBQ0QVHccHBE8Ig7Aeq")
    order = Order.create(user_id: user.id, number: "BO086327639", total: 10, state: "created")
    expect(order).to be_valid
  end
end
