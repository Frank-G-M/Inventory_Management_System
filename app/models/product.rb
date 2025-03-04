# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  price       :decimal(, )
#  stock       :integer
#  sku         :string
#  image_url   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Product < ApplicationRecord
  belongs_to :Category
end
