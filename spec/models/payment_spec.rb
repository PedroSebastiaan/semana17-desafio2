require 'rails_helper'

RSpec.describe Payment, type: :model do
  it 'Create a payment flux' do
    user = User.create(email: "mail@mail.com", encrypted_password: "$2a$11$a5tJ1NJyGa0.0KyFhY6ehOi9LGDWSiZ492iBQ0QVHccHBE8Ig7Aeq")
    order = Order.create(user_id: user.id, number: "BO086327639", total: 10, state: "created")
    payment_method = PaymentMethod.create(name: "Paypal Express Checkout", code: "PEC")
    payment = Payment.create(order_id: order.id, payment_method_id: payment_method.id, state: "created", total: 10)
    expect(payment).to be_valid
  end
end
