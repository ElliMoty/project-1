# == Schema Information
#
# Table name: products
#
#  id          :bigint(8)        not null, primary key
#  name        :text
#  description :text
#  price       :text
#  image       :text
#  sold        :boolean
#  seller_id   :integer
#  buyer_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
