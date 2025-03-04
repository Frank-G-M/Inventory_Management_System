# == Schema Information
#
# Table name: orders
#
#  id           :integer          not null, primary key
#  total_amount :float
#  status       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :products, through: :order_items
end
