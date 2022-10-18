class Order < ApplicationRecord
    belongs_to :user

    def self.update_order
        order = Order.last
        order.update(status: "Ready for pickup")
    end
end
