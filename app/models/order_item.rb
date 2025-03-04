# == Schema Information
#
# Table name: order_items
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  unit_price :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
end
