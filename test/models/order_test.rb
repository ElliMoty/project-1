# == Schema Information
#
# Table name: orders
#
#  id         :bigint(8)        not null, primary key
#  confirmed  :boolean
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  order_date :datetime
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
